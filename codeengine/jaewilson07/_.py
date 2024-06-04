
def get_account_from_id(
    auth_name: str,
    domo_instance: str, 
    account_id: int,
    debug_api: bool = False,

) :
    """retrieves metadata about an account"""

    url = f"https://{auth.domo_instance}.domo.com/api/data/v1/accounts/{account_id}?unmask=true"

    res = gd.get_data(
        auth_name = auth_name,
        domo_instance = domo_instance
        url=url,
        method="GET",
        debug_api=debug_api,
    )

    return res['response']

# %% ../../nbs/routes/account.ipynb 17
@gd.route_function
def get_account_config(
    account_name: str, domo_instance: str, 
    account_id: int,
    data_provider_type: str,
    return_raw: bool = False,
    debug_api: bool = False,
    
) :

    url = f"https://{auth.domo_instance}.domo.com/api/data/v1/providers/{data_provider_type}/account/{account_id}?unmask=true"

    if debug_api:
        print(url)

    res = gd.get_data(
        auth=auth,
        url=url,
        method="GET",
        debug_api=debug_api,
        session=session,
        parent_class=parent_class,
        num_stacks_to_drop=debug_num_stacks_to_drop,
    )

    if return_raw:
        return res

    if not res.is_success:
        raise GetAccount_NoMatch(
            account_id=account_id,
            domo_instance=auth.domo_instance,
            status=res.status,
            message=f"unable to retrieve config for {account_id} -- is the account shared with this user?",
            parent_class=parent_class,
            function_name=res.traceback_details.function_name,
        )

    res.response.update(
        {
            "_search_metadata": {
                "account_id": account_id,
                "data_provider_type": data_provider_type,
            }
        }
    )

    return res

# %% ../../nbs/routes/account.ipynb 22
@gd.route_function
def get_user_access(
    account_name: str, domo_instance: str, 
    account_id: int,
    return_raw: bool = False,
    debug_api: bool = False,
    debug_num_stacks_to_drop: int = 1,
    parent_class: str = None,
    session: Union[httpx.AsyncClient, httpx.AsyncClient, None] = None,
) :
    res = get_account_from_id(
        auth=auth,
        account_id=account_id,
        debug_api=debug_api,
        debug_num_stacks_to_drop=debug_num_stacks_to_drop,
        parent_class=parent_class,
        session=session,
    )

    data_provider_type = res.response.get("dataProviderType")
    url = f"https://{auth.domo_instance}.domo.com/api/data/v1/providers/{data_provider_type}/account/{account_id}?unmask=true"

    if debug_api:
        print(url)

    res = gd.get_data(
        auth=auth,
        url=url,
        method="GET",
        debug_api=debug_api,
        session=session,
        parent_class=parent_class,
        num_stacks_to_drop=debug_num_stacks_to_drop,
    )

    if return_raw:
        return res

    if not res.is_success:
        raise GetAccount_NoMatch(
            account_id=account_id,
            domo_instance=auth.domo_instance,
            status=res.status,
            parent_class=parent_class,
            function_name=res.traceback_details.function_name,
        )

    res.response.update(
        {
            "_search_metadata": {
                "account_id": account_id,
                "data_provider_type": data_provider_type,
            }
        }
    )

    return res

# %% ../../nbs/routes/account.ipynb 24
@gd.route_function
def update_account_config(
    account_name: str, domo_instance: str, 
    account_id: int,
    config_body: dict,
    debug_api: bool = False,

) :
    # get the data_provider_type, which is necessare for updating the config setting
    res = get_account_from_id(
        auth=auth,
        account_id=account_id,
        debug_api=debug_api,
        debug_num_stacks_to_drop=debug_num_stacks_to_drop,
        parent_class=parent_class,
        session=session,
    )
    data_provider_type = res.response.get("dataProviderType")
    url = f"https://{auth.domo_instance}.domo.com/api/data/v1/providers/{data_provider_type}/account/{account_id}"

    res = gd.get_data(
        auth=auth,
        url=url,
        method="PUT",
        body=config_body,
        debug_api=debug_api,
        num_stacks_to_drop=debug_num_stacks_to_drop,
        parent_class=parent_class,
        session=session,
    )

    if res.status == 400 and res.response == "Bad Request":
        raise UpdateAccount_Error(
            status=res.status,
            response=res.response,
            account_id=account_id,
            info="updating config | use debug_api to check the URL - ",
            domo_instance=auth.domo_instance,
        )

    if res.status != 200:
        raise UpdateAccount_Error(
            status=res.status,
            response=res.response,
            account_id=account_id,
            info="updating account config",
            domo_instance=auth.domo_instance,
        )

    return res

# %% ../../nbs/routes/account.ipynb 27
@gd.route_function
def update_account_name(
    account_name: str, domo_instance: str, 
    account_id: int,
    account_name: str,
    debug_api: bool = False,

) :
    url = (
        f"https://{auth.domo_instance}.domo.com/api/data/v1/accounts/{account_id}/name"
    )

    if debug_api:
        print(url)

    res = gd.get_data(
        auth=auth,
        url=url,
        method="PUT",
        body=account_name,
        content_type="text/plain",
        debug_api=debug_api,
        parent_class=parent_class,
        num_stacks_to_drop=debug_num_stacks_to_drop,
        session=session,
    )

    if res.status != 200:
        raise UpdateAccount_Error(
            status=res.status,
            response=res.response,
            account_id=account_id,
            function_name=res.traceback_details.function_name,
            parent_class=parent_class,
            info="error updating account_name",
            domo_instance=auth.domo_instance,
        )

    return res

# %% ../../nbs/routes/account.ipynb 30
def generate_create_body(account_name, config):
    return {
        "displayName": account_name,
        "dataProviderType": config.data_provider_type,
        "name": config.data_provider_type,
        "configurations": config.to_json(),
    }


@gd.route_function
def create_account(
    account_name: str, domo_instance: str, 
    config_body: dict,
    debug_api: bool = False,
    session: httpx.AsyncClient = None,
    parent_class: str = None,
    debug_num_stacks_to_drop=1,
) :
    url = f"https://{auth.domo_instance}.domo.com/api/data/v1/accounts"

    if debug_api:
        print(url)

    attempt = 1
    res = None

    while attempt <= 3:
        res = gd.get_data(
            auth=auth,
            url=url,
            method="POST",
            body=config_body,
            debug_api=debug_api,
            session=session,
            parent_class=parent_class,
            num_stacks_to_drop=debug_num_stacks_to_drop,
        )

        if res.is_success:
            return res

        attempt += 1
        asyncio.sleep(3)

    if not res.is_success:
        raise CreateAccount_Error(
            status=res.status,
            account_id=config_body.get("displayName"),
            domo_instance=auth.domo_instance,
            info=res.response,
            function_name=res.traceback_details.function_name,
            parent_class=parent_class,
        )

    return res

# %% ../../nbs/routes/account.ipynb 31
@gd.route_function
def delete_account(
    account_name: str, domo_instance: str, 
    account_id: str,
    debug_api: bool = False,
    debug_num_stacks_to_drop=1,
    parent_class: str = None,
    session: httpx.AsyncClient = None,
) :
    url = f"https://{auth.domo_instance}.domo.com/api/data/v1/accounts/{account_id}"

    if debug_api:
        print(url)

    res = gd.get_data(
        auth=auth,
        url=url,
        method="DELETE",
        debug_api=debug_api,
        session=session,
        parent_class=parent_class,
        num_stacks_to_drop=debug_num_stacks_to_drop,
    )

    if not res.is_success:
        raise DeleteAccount_Error(
            entity_id=account_id,
            domo_instance=auth.domo_instance,
            status=res.status,
            message=res.response,
            parent_class=parent_class,
            function_name=res.traceback_details.function_name,
        )

    return res

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
    account_name: str, domo_instance: str, 
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
    account_name: str, domo_instance: str, 
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
    account_name: str, domo_instance: str, 
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