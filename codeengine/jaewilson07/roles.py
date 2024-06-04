from codeengine.jaewilson07._base import get_data, CodeEngine_RequestError


def list_roles(
    domo_instance: str = None, auth_name: str = None, debug_api: bool = False
):
    url = ("/api/authorization/v1/roles",)

    res = get_data(
        url=url,
        method="get",
        domo_instance=domo_instance,
        auth_name=auth_name,
        debug_api=debug_api,
    )

    if not res["is_success"]:
        raise CodeEngine_RequestError(res=res, url=url)

    return res["response"]
