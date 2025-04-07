import requests

from utils import gd_requests

def get_101() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/codeengine/v2/packages/9a2f8f7a-b0bd-49d6-8bc7-641453b3df24/versions/1.0.1
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/codeengine/v2/packages/9a2f8f7a-b0bd-49d6-8bc7-641453b3df24/versions/1.0.1"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {'parts': 'functions,code'}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_101():
    """Test the get_101 function."""
    auth = {}
    response = get_101()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response