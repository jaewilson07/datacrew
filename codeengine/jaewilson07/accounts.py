import codeengine
import json
import requests


import inspect


from typing import List


def get_account(auth_name: str) -> dict:
    return codeengine.get_account(auth_name)


class CodeEngine_RequestError(Exception):
    def __init__(self, message=None, res=None, url=None):
        function_name = inspect.stack()[1][3]
        message = (
            message or f"{function_name} : {res['status']} - {res['response']} - {url}"
        )

        super().__init__(message)


def get_full_auth_session_token(
    username: str, password: str, domo_instance: str
) -> str:

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

    data = res["response"]

    if not data.get("success") or not data.get("sessionToken"):

        raise CodeEngine_RequestError(
            "get_full_auth_session_token: no session token returned"
        )

    return data.get("sessionToken")


def generate_auth_header(auth_name: str, domo_instance: str) -> dict:

    account = get_account(auth_name)

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
        raise CodeEngine_RequestError(
            f"account {auth_name} is not of type 'abstract-credential-store' or domo-access'token'"
        )

    username = creds.get("username", creds.get("DOMO_USERNAME"))
    password = creds.get("password", creds.get("DOMO_PASSWORD"))
    access_token = creds.get("domoAccessToken", creds.get("DOMO_ACCESS_TOKEN"))
    access_token = access_token and access_token.strip()

    if (not username or not password) and not access_token:
        raise CodeEngine_RequestError(
            f"credentials stored in an invalid combination in {auth_name}.  Creds must either be stored as username or DOMO_USERNAME and password or DOMO_PASSWORD or store accessToken or DOMO_ACCESS_TOKEN"
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

    raise CodeEngine_RequestError("no token returned")


def get_data(
    url: str,
    method: str,
    domo_instance: str = None,
    auth_name: str = None,
    params: dict = None,
    headers: dict = None,
    body: dict = None,
    debug_api: bool = False,
) -> dict:

    domo_instance = (
        None if domo_instance == "" else domo_instance.replace(".domo.com", "")
    )
    auth_name = None if auth_name == "" else auth_name

    headers = headers or {}
    headers = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        **headers,
    }

    if domo_instance:
        url = f"https://{domo_instance}.domo.com/{url[1:]}"

    if domo_instance and auth_name:
        auth_header = generate_auth_header(
            auth_name=auth_name, domo_instance=domo_instance
        )
        headers = {**headers, **auth_header}

    if debug_api:
        print({"url": url, "method": method, "headers": headers, "body": body})

    if auth_name or domo_instance:
        try:
            res = None
            data = None

            if "text/plain" in headers["Content-Type"]:
                res = requests.request(
                    method=method.lower(),
                    url=url,
                    data=body,
                    headers=headers,
                    params=params,
                    timeout=30,
                )

            else:
                res = requests.request(
                    method=method.lower(),
                    url=url,
                    json=body,
                    headers=headers,
                    params=params,
                    timeout=30,
                )

            try:

                data = res.json()
            except Exception as e:
                data = res.text

            if not res.ok:
                return {
                    "response": data["message"],
                    "is_success": res.ok,
                    "status": res.status_code,
                }

            return {
                "response": data,
                "is_success": res.ok,
                "status": res.status_code,
            }

        except requests.exceptions.HTTPError as e:
            print("*** Error occurred")
            print(str(e))
            return str(e)

    return {
        "is_success": True,
        "response": codeengine.send_request(method, url, body, headers, params),
        "status": 200,
    }


def get_accounts(
    auth_name: str, domo_instance: str, debug_api: bool = False
) -> List[dict]:
    """retrieve a list of all the accounts the user has read access to.  Note users with "Manage all accounts" will retrieve all account objects"""

    url = "/api/data/v1/accounts"

    res = get_data(
        auth_name=auth_name,
        domo_instance=domo_instance,
        url=url,
        method="GET",
        debug_api=debug_api,
    )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["response"]


def get_account_from_id(
    auth_name: str,
    domo_instance: str,
    account_id: int,
    debug_api: bool = False,
):
    """retrieves metadata about an account"""

    url = f"/api/data/v1/accounts/{account_id}?unmask=true"

    res = get_data(
        auth_name=auth_name,
        domo_instance=domo_instance,
        url=url,
        method="GET",
        debug_api=debug_api,
    )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["response"]


def get_account_config(
    auth_name: str,
    domo_instance: str,
    account_id: int,
    data_provider_type: str,
    debug_api: bool = False,
):

    url = (
        f"/api/data/v1/providers/{data_provider_type}/account/{account_id}?unmask=true"
    )

    res = get_data(
        auth_name=auth_name,
        domo_instance=domo_instance,
        url=url,
        method="GET",
        debug_api=debug_api,
    )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["response"]


def update_account_config(
    auth_name: str,
    domo_instance: str,
    account_id: int,
    body: dict,
    debug_api: bool = False,
):
    res = get_account_from_id(
        auth_name=auth_name, domo_instance=domo_instance, account_id=account_id
    )

    data_provider_type = res["dataProviderType"]

    url = f"/api/data/v1/providers/{data_provider_type}/account/{account_id}"

    res = get_data(
        auth_name=auth_name,
        domo_instance=domo_instance,
        url=url,
        method="PUT",
        body=body,
        debug_api=debug_api,
    )
    print(res)

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["is_success"]


def update_account_name(
    auth_name: str,
    domo_instance: str,
    account_id: int,
    new_account_name: str,
    debug_api: bool = False,
):
    url = f"/api/data/v1/accounts/{account_id}/name"

    res = get_data(
        auth_name=auth_name,
        domo_instance=domo_instance,
        url=url,
        method="PUT",
        body=new_account_name,
        headers={"Content-Type": "text/plain"},
        debug_api=debug_api,
    )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["is_success"]


def create_account(
    auth_name: str,
    domo_instance: str,
    account_name: str,
    data_provider_type: str,
    config: dict,
    debug_api: bool = False,
):
    url = "/api/data/v1/accounts"

    body = {
        "displayName": account_name,
        "name": account_name,
        "dataProviderType": data_provider_type,
        "configurations": config,
    }

    res = get_data(
        auth_name=auth_name,
        domo_instance=domo_instance,
        url=url,
        method="POST",
        body=body,
        debug_api=debug_api,
    )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["is_success"]


def delete_account(
    auth_name: str,
    domo_instance: str,
    account_id: str,
    debug_api: bool = False,
):
    url = f"/api/data/v1/accounts/{account_id}"

    res = get_data(
        auth_name=auth_name,
        domo_instance=domo_instance,
        url=url,
        method="DELETE",
        debug_api=debug_api,
    )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["is_success"]


def share_account_v2(
    auth_name: str,
    domo_instance: str,
    account_id: str,
    entity_id: int = None,
    user_or_group: str = "USER",
    access_level: str = "CAN_VIEW",
    debug_api: bool = False,
):
    """beta feature not consistently enabled across all instances"""

    url = f"/api/data/v2/accounts/share/{account_id}"

    body = {"type": user_or_group, "id": int(entity_id), "accessLevel": access_level}

    res = get_data(
        auth_name=auth_name,
        domo_instance=domo_instance,
        url=url,
        method="PUT",
        body=body,
        debug_api=debug_api,
    )

    if res["status"] == 500 and res["response"] == "Internal Server Error":
        raise CodeEngine_RequestError(
            f"unable to share {account_id} with User. May already have access to account"
        )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["is_success"]
