from typing import List

from codeengine.jaewilson07._base import get_data, CodeEngine_RequestError


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
