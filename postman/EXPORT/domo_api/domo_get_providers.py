import requests

from utils import gd_requests

def get_providers() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/data/v1/providers
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/data/v1/providers"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {'fields': 'key,name'}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_providers():
    """Test the get_providers function."""
    auth = {}
    response = get_providers()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response