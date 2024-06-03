from get_data import get_data


def list_roles(
    domo_instance: str = None, account_name: str = None, debug_api: bool = False
):
    return get_data(
        url="/api/authorization/v1/roles",
        method="get",
        domo_instance=domo_instance,
        account_name=account_name,
        debug_api=debug_api,
    )


def list_pages(
    domo_instance: str = None, account_name: str = None, debug_api: bool = False
):
    body = {"ascending": True, "orderBy": "pageTitle"}

    response = get_data(
        url="/api/content/v1/pages/adminsummary?limit=10&skip=0",
        method="post",
        body=body,
        domo_instance=domo_instance,
        account_name=account_name,
        debug_api=debug_api,
    )
    return response


def get_page_by_id(
    page_id, domo_instance=None, account_name=None, debug_api: bool = False
):

    url = (
        "/api/content/v3/stacks/"
        + page_id
        + "/cards?includeV4PageLayouts=true&parts=metadata,datasources,library,drillPathURNs,certification,owners,dateInfo,subscriptions,slicers"
    )
    response = get_data(
        url=url,
        method="get",
        domo_instance=domo_instance,
        account_name=account_name,
        debug_api=debug_api,
    )
    return response


def list_subscription_invites(
    domo_instance=None, account_name=None, debug_api: bool = False
):
    response = get_data(
        url="/api/publish/v2/subscription/invites",
        method="get",
        domo_instance=domo_instance,
        account_name=account_name,
        debug_api=debug_api,
    )
    return response
