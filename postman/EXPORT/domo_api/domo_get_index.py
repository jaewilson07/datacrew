import requests

from utils import gd_requests

def get_index() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/users/index
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/users/index"
    headers = {'accept': '*/*'}
    params = {'cvUserIds': '1728973208'}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_index():
    """Test the get_index function."""
    auth = {}
    response = get_index()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response