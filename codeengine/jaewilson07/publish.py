from codeengine.jaewilson07._base import get_data, CodeEngine_RequestError


def list_subscription_invites(
    domo_instance=None, auth_name=None, debug_api: bool = False
):
    url = ("/api/publish/v2/subscription/invites",)

    res = get_data(
        method="get",
        url=url,
        domo_instance=domo_instance,
        auth_name=auth_name,
        debug_api=debug_api,
    )
    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["response"]
