import requests

from utils import gd_requests

def get_typeahead() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/content/v2/groups/typeahead
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/content/v2/groups/typeahead"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {'limit': '10', 'offset': '0', 'query': '', 'types': 'open'}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_typeahead():
    """Test the get_typeahead function."""
    auth = {}
    response = get_typeahead()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response