import requests

from utils import gd_requests

def post_get() -> requests.Response:
    """Make a POST request to https://domo-community.domo.com/api/content/v2/groups/get
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/content/v2/groups/get"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {'ignoreCache': 'false', 'includeActive': 'false', 'includeUsers': 'false'}
    auth = {}
    data = ["1307490673","214597750","194176120","1251049072","1781661643"]
    response = gd_requests(method='post', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_post_get():
    """Test the post_get function."""
    auth = {}
    response = post_get()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response