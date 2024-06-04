from codeengine.jaewilson07._base import get_data, CodeEngine_RequestError


def list_pages(
    domo_instance: str = None, auth_name: str = None, debug_api: bool = False
):
    body = {"ascending": True, "orderBy": "pageTitle"}

    url = "/api/content/v1/pages/adminsummary?limit=10&skip=0"

    res = get_data(
        method="post",
        url=url,
        body=body,
        domo_instance=domo_instance,
        auth_name=auth_name,
        debug_api=debug_api,
    )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["response"]


def get_page_by_id(
    page_id, domo_instance=None, auth_name=None, debug_api: bool = False
):

    url = "/api/content/v3/stacks/" + page_id + "/cards"
    res = get_data(
        url=url,
        method="get",
        domo_instance=domo_instance,
        auth_name=auth_name,
        debug_api=debug_api,
        params={
            "includeV4PageLayouts": True,
            "parts": "metadata,datasources,library,drillPathURNs,certification,owners,dateInfo,subscriptions,slicers",
        },
    )
    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["response"]
