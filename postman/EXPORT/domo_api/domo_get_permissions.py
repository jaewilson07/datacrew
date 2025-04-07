import requests

from utils import gd_requests

def get_permissions() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/codeengine/v2/packages/9a2f8f7a-b0bd-49d6-8bc7-641453b3df24/permissions
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/codeengine/v2/packages/9a2f8f7a-b0bd-49d6-8bc7-641453b3df24/permissions"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_permissions():
    """Test the get_permissions function."""
    auth = {}
    response = get_permissions()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response