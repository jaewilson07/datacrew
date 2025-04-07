import requests

from utils import gd_requests

def get_domoopenai() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/ai/v1/settings/services/sql/models/domo.openai
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/ai/v1/settings/services/sql/models/domo.openai"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_domoopenai():
    """Test the get_domoopenai function."""
    auth = {}
    response = get_domoopenai()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response