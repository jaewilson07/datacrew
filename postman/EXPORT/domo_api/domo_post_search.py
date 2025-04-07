import requests

from utils import gd_requests

def post_search() -> requests.Response:
    """Make a POST request to https://domo-community.domo.com/api/identity/v1/users/search
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/identity/v1/users/search"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {'cacheBuster': '1744062745597'}
    auth = {}
    data = {"ids":["68216396","612085674","475856860","1950208331","93814778","1658438246","1893952720","27","1690220187","1437951404","1926758222","1238642890","1366575707"],"showCount":false,"includeDeleted":false,"onlyDeleted":false,"includeSupport":false,"limit":50,"parts":["DETAILED"],"cacheBuster":1744062745597}
    response = gd_requests(method='post', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_post_search():
    """Test the post_search function."""
    auth = {}
    response = post_search()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response