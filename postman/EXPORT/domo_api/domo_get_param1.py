import requests

from utils import gd_requests

def get_param1() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/content/v1/avatar/GROUP/746771171
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/content/v1/avatar/GROUP/746771171"
    headers = {'accept': '*/*'}
    params = {'size': '100', 'defaultBackground': '555555', 'defaultForeground': 'EEEEEE', 'defaultText': 'TC'}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_param1():
    """Test the get_param1 function."""
    auth = {}
    response = get_param1()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response