import requests

from utils import gd_requests

def get_permission() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/datastores/v1/collections/818920ec-b891-4005-953d-3861403db86b/permission
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/datastores/v1/collections/818920ec-b891-4005-953d-3861403db86b/permission"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_permission():
    """Test the get_permission function."""
    auth = {}
    response = get_permission()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response