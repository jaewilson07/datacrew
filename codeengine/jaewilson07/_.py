# %% ../../nbs/routes/account.ipynb 33
class ShareAccount:
    pass


class ShareAccount_V1_AccessLevel(ShareAccount, Enum):
    CAN_VIEW = "READ"
    CAN_EDIT = "WRITE"
    OWNER = "OWNER"


class ShareAccount_V2_AccessLevel(ShareAccount, Enum):
    CAN_VIEW = "CAN_VIEW"
    CAN_EDIT = "CAN_EDIT"
    CAN_SHARE = "CAN_SHARE"
    OWNER = "OWNER"


def generate_share_account_payload_v1(access_level: ShareAccount, user_id: int = None):
    return {"type": "USER", "id": int(user_id), "permissions": [access_level.value]}


def generate_share_account_payload_v2(
    access_level: ShareAccount, user_id: int = None, group_id: int = None
):
    if user_id:
        return {"type": "USER", "id": int(user_id), "accessLevel": access_level.value}

    if group_id:
        return {"type": "GROUP", "id": int(group_id), "accessLevel": access_level.value}


# %% ../../nbs/routes/account.ipynb 35
@gd.route_function
def share_account_v2(
    account_name: str,
    domo_instance: str,
    account_id: str,
    share_payload: dict,
    debug_api: bool = False,
    parent_class: str = None,
    debug_num_stacks_to_drop=1,
    session: httpx.AsyncClient = None,
):
    url = (
        f"https://{auth.domo_instance}.domo.com/api/data/v2/accounts/share/{account_id}"
    )

    res = gd.get_data(
        auth=auth,
        url=url,
        method="PUT",
        body=share_payload,
        parent_class=parent_class,
        num_stacks_to_drop=debug_num_stacks_to_drop,
        debug_api=debug_api,
        session=session,
    )

    if res.status == 500 and res.response == "Internal Server Error":
        raise ShareAccount_Error_AlreadyShared(
            account_id=account_id,
            status=res.status,
            response=f'ℹ️ - {res.response + "| User may already have access to account."}',
            domo_instance=auth.domo_instance,
            function_name=res.traceback_details.function_name,
            parent_class=parent_class,
        )

    if not res.status == 200:
        raise ShareAccount_Error(
            account_id=account_id,
            status=res.status,
            response=res.response,
            domo_instance=auth.domo_instance,
            function_name=res.traceback_details.function_name,
            parent_class=parent_class,
        )

    return res


# %% ../../nbs/routes/account.ipynb 36
@gd.route_function
def get_account_accesslist(
    account_name: str,
    domo_instance: str,
    account_id: str,
    debug_api: bool = False,
):
    url = (
        f"https://{auth.domo_instance}.domo.com/api/data/v2/accounts/share/{account_id}"
    )

    res = gd.get_data(
        auth=auth,
        url=url,
        method="GET",
        debug_api=debug_api,
        num_stacks_to_drop=debug_num_stacks_to_drop,
        parent_class=parent_class,
        session=session,
    )

    if not res.status == 200:
        raise GetAccount_NoMatch(
            domo_instance=auth.domo_instance,
            status=res.status,
            function_name=res.traceback_details.function_name,
            parent_class=parent_class,
        )

    return res


# %% ../../nbs/routes/account.ipynb 39
# v1 may have been deprecated.  used to be tied to group beta
@gd.route_function
def share_account_v1(
    account_name: str,
    domo_instance: str,
    account_id: str,
    share_payload: dict,
    debug_api: bool = False,
):
    """V1 API allows sharing with users ONLY, the original implementation does not support sharing with groups and has a more limited set of share rights (owner or read)"""
    url = (
        f"https://{auth.domo_instance}.domo.com/api/data/v1/accounts/{account_id}/share"
    )

    res = gd.get_data(
        auth=auth,
        url=url,
        method="PUT",
        body=share_payload,
        num_stacks_to_drop=debug_num_stacks_to_drop,
        parent_class=parent_class,
        debug_api=debug_api,
        session=session,
    )

    if res.status == 500 and res.response == "Internal Server Error":
        raise ShareAccount_Error_AlreadyShared(
            account_id=account_id,
            status=res.status,
            response=f'ℹ️ - {res.response + "| User may already have access to or own the account OR may need to execute v2 share API."}',
            domo_instance=auth.domo_instance,
            function_name=res.traceback_details.function_name,
            parent_class=parent_class,
        )

    if not res.status == 200:
        raise ShareAccount_Error(
            account_id=account_id,
            status=res.status,
            response=res.response,
            domo_instance=auth.domo_instance,
            function_name=res.traceback_details.function_name,
            parent_class=parent_class,
        )

    return res
