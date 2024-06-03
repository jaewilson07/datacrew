import codeengine

import json
import requests


def get_account(account_name) -> dict:
    return codeengine.get_account(account_name)


class CodeEngine_RequestError(Exception):
    def __init__(self, message):
        super().__init__(message)


class CodeEngine_AuthError(Exception):
    def __init__(self, message):
        super().__init__(message)


def get_full_auth_session_token(username, password, domo_instance):

    url = "/api/content/v2/authentication"

    payload = {
        "method": "password",
        "emailAddress": username,
        "password": password.strip(),
    }

    res = get_data(
        url=url,
        method="post",
        domo_instance=domo_instance,
        body=payload,
        debug_api=False,
    )

    if not res.get("success") or not res.get("sessionToken"):
        raise CodeEngine_AuthError(
            "get_full_auth_session_token: no session token returned"
        )

    return res.get("sessionToken")


def generate_auth_header(account_name, domo_instance):

    account = get_account(account_name)

    creds = None
    access_token = None
    session_token = None

    if (
        account["dataProviderType"] == "abstract-credential-store"
        and account["credentialsType"] == "fields"
    ):
        creds = json.loads(account["properties"]["credentials"])

    if account["dataProviderType"] == "domo-access-token":
        creds = account["properties"]

    if not creds:
        raise CodeEngine_AuthError(
            f"account {account_name} is not of type 'abstract-credential-store' or domo-access'token'"
        )

    username = creds.get("username", creds.get("DOMO_USERNAME"))
    password = creds.get("password", creds.get("DOMO_PASSWORD"))
    access_token = creds.get("domoAccessToken", creds.get("DOMO_ACCESS_TOKEN")).strip()

    if (not username or not password) and not access_token:
        raise CodeEngine_AuthError(
            f"credentials stored in an invalid combination in {account_name}.  Creds must either be stored as username or DOMO_USERNAME and password or DOMO_PASSWORD or store accessToken or DOMO_ACCESS_TOKEN"
        )

    if username and password:
        session_token = get_full_auth_session_token(
            username=username,
            password=password,
            domo_instance=domo_instance,
        )

    if session_token:
        return {"x-domo-authentication": session_token}

    if access_token:
        return {"x-domo-developer-token": access_token}

    raise CodeEngine_AuthError("no token returned")


def get_data(
    url,
    method,
    domo_instance=None,
    account_name=None,
    params=None,
    headers=None,
    body=None,
    debug_api: bool = False,
):

    domo_instance = (
        None if domo_instance == "" else domo_instance.replace(".domo.com", "")
    )
    account_name = None if account_name == "" else account_name

    headers = headers or {}
    headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        **headers,
    }

    if domo_instance:
        url = f"https://{domo_instance}.domo.com/{url[1:]}"

    if domo_instance and account_name:
        auth_header = generate_auth_header(
            account_name=account_name, domo_instance=domo_instance
        )
        headers = {**headers, **auth_header}

    if debug_api:
        print({"url": url, "method": method, "headers": headers, "body": body})

    if domo_instance:
        try:
            res = requests.request(
                method=method.lower(),
                url=url,
                json=body,
                headers=headers,
                params=params,
                timeout=30,
            )

            if not res.ok:
                raise CodeEngine_RequestError(
                    f"request error {res.status_code} - {url} - {json.dumps(body)}"
                )

            return res.json()

        except requests.exceptions.HTTPError as e:
            print("*** Error occurred")
            print(str(e))
            return str(e)

    return codeengine.send_request(method, url, body, headers, params)
