import requests

from utils import gd_requests

def post_clog() -> requests.Response:
    """Make a POST request to https://domo-community.domo.com/api/content/v1/stats/clog
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/content/v1/stats/clog"
    headers = {'accept': '*/*', 'content-type': 'application/json'}
    params = {}
    auth = {}
    data = {"behavior_name":"route_time_taken","host":"domo-community.domo.com","path":"/appdb","hash":"","genericizedPath":"/appdb","duration":83296,"firstClick":21309,"isFirstRoute":false,"digestCycles":{"count":2,"min":1,"avg":1,"max":1,"sum":2},"httpRequests":0,"failedAjaxRequests":0,"client":"desktopwebapp","routeFinished":false,"timeSinceRefresh":220357,"userAgent":"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36","usedJSHeapSize":190651515}
    response = gd_requests(method='post', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_post_clog():
    """Test the post_clog function."""
    auth = {}
    response = post_clog()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response