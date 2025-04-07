import requests

from utils import gd_requests

def get_users() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/content/v3/users
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/content/v3/users"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {'id': '1893952720', 'includeDetails': 'true'}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_users():
    """Test the get_users function."""
    auth = {}
    response = get_users()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response