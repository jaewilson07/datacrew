import requests

from utils import gd_requests

def get_general() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/ai/v1/settings/general
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/ai/v1/settings/general"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_general():
    """Test the get_general function."""
    auth = {}
    response = get_general()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response