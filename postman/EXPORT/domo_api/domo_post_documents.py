import requests

from utils import gd_requests

def post_documents() -> requests.Response:
    """Make a POST request to https://domo-community.domo.com/api/datastores/v1/collections/818920ec-b891-4005-953d-3861403db86b/documents
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/datastores/v1/collections/818920ec-b891-4005-953d-3861403db86b/documents"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    data = {"content":{"date":"2025-04-07","my_update":"","tensor":""}}
    response = gd_requests(method='post', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_post_documents():
    """Test the post_documents function."""
    auth = {}
    response = post_documents()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response