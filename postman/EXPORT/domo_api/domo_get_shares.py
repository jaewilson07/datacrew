import requests

from utils import gd_requests

def get_shares() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/fileshare/v1/shares
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/fileshare/v1/shares"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_shares():
    """Test the get_shares function."""
    auth = {}
    response = get_shares()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response