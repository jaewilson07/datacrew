import requests

from utils import gd_requests

def put_param1() -> requests.Response:
    """Make a PUT request to https://domo-community.domo.com/api/datastores/v1/collections/818920ec-b891-4005-953d-3861403db86b
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/datastores/v1/collections/818920ec-b891-4005-953d-3861403db86b"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    data = {"id":"818920ec-b891-4005-953d-3861403db86b","syncEnabled":true}
    response = gd_requests(method='put', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_put_param1():
    """Test the put_param1 function."""
    auth = {}
    response = put_param1()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response