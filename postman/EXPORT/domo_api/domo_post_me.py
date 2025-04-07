import requests

from utils import gd_requests

def post_me() -> requests.Response:
    """Make a POST request to https://domo-community.domo.com/api/sessions/v1/me
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/sessions/v1/me"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=UTF-8'}
    params = {}
    auth = {}
    data = {"lastAccess":"2025-04-07T21:57:25.584Z"}
    response = gd_requests(method='post', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_post_me():
    """Test the post_me function."""
    auth = {}
    response = post_me()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response