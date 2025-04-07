import requests

from utils import gd_requests

def post_query() -> requests.Response:
    """Make a POST request to https://domo-community.domo.com/api/datastores/v2/collections/818920ec-b891-4005-953d-3861403db86b/documents/query
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/datastores/v2/collections/818920ec-b891-4005-953d-3861403db86b/documents/query"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {'count': 'id', None: ''}
    auth = {}
    data = {}
    response = gd_requests(method='post', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_post_query():
    """Test the post_query function."""
    auth = {}
    response = post_query()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response