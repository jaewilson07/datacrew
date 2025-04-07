import requests

from utils import gd_requests

def post_card() -> requests.Response:
    """Make a POST request to https://domo-community.domo.com/domoapps/apps/v2/card
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/domoapps/apps/v2/card"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    data = []
    response = gd_requests(method='post', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_post_card():
    """Test the post_card function."""
    auth = {}
    response = post_card()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response