import requests

from utils import gd_requests

def get_cards() -> requests.Response:
    """Make a GET request to https://domo-community.domo.com/api/content/v1/cards
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/content/v1/cards"
    headers = {'accept': '*/*'}
    params = {'urns': 'undefined', 'parts': 'certification,datasources,dateInfo,drillPathURNs,library,metadata,metadataOverrides,owners,slicers,subscriptions', 'includeFiltered': 'true'}
    auth = {}
    response = gd_requests(method='get', url=url, auth=auth, headers=headers, params=params)
    return response


def test_get_cards():
    """Test the get_cards function."""
    auth = {}
    response = get_cards()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response