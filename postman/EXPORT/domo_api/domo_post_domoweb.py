import requests

from utils import gd_requests

def post_domoweb() -> requests.Response:
    """Make a POST request to https://domo-community.domo.com/api/analytics/v1/domoweb
    
    Returns:
        requests.Response: The response from the API
    """
    url = "https://domo-community.domo.com/api/analytics/v1/domoweb"
    headers = {'accept': 'application/json, text/plain, */*', 'content-type': 'application/json;charset=utf-8'}
    params = {}
    auth = {}
    data = [{"behavior_name":"left_nav_main_expand","tier_level":"standard","clientToe":"C5MAH5D893-CKQE4","customer":"mmmm-0012-0200","unique_user_id":"mmmm-0012-0200-1893952720","domain":"domo-community.domo.com","environment":"prod1","platform":"webapp","domo_version":"2025_02_04","device_language":"en-US","display_language":"en-US","session_id":"0468eba6-776d-47e7-8803-52ca6b2eabe0","path":"/page/30507758","event_order":11,"eventType":"link"},{"actionType":"feature","id":"ai_and_ml_ai_chat","behavior_name":"left_nav_pinned_item_clicked","tier_level":"standard","clientToe":"C5MAH5D893-CKQE4","customer":"mmmm-0012-0200","unique_user_id":"mmmm-0012-0200-1893952720","domain":"domo-community.domo.com","environment":"prod1","platform":"webapp","domo_version":"2025_02_04","device_language":"en-US","display_language":"en-US","session_id":"0468eba6-776d-47e7-8803-52ca6b2eabe0","path":"/page/30507758","event_order":12,"eventType":"link"},{"nav_tier_category":1,"behavior_name":"left_nav_domo_products","tier_level":"standard","clientToe":"C5MAH5D893-CKQE4","customer":"mmmm-0012-0200","unique_user_id":"mmmm-0012-0200-1893952720","domain":"domo-community.domo.com","environment":"prod1","platform":"webapp","domo_version":"2025_02_04","device_language":"en-US","display_language":"en-US","session_id":"0468eba6-776d-47e7-8803-52ca6b2eabe0","path":"/page/30507758","event_order":13,"eventType":"link"},{"behavior_name":"left_nav_main_expand","tier_level":"standard","clientToe":"C5MAH5D893-CKQE4","customer":"mmmm-0012-0200","unique_user_id":"mmmm-0012-0200-1893952720","domain":"domo-community.domo.com","environment":"prod1","platform":"webapp","domo_version":"2025_02_04","device_language":"en-US","display_language":"en-US","session_id":"0468eba6-776d-47e7-8803-52ca6b2eabe0","path":"/page/30507758","event_order":14,"eventType":"link"},{"behavior_name":"left_nav_main_expand","tier_level":"standard","clientToe":"C5MAH5D893-CKQE4","customer":"mmmm-0012-0200","unique_user_id":"mmmm-0012-0200-1893952720","domain":"domo-community.domo.com","environment":"prod1","platform":"webapp","domo_version":"2025_02_04","device_language":"en-US","display_language":"en-US","session_id":"0468eba6-776d-47e7-8803-52ca6b2eabe0","path":"/page/30507758","event_order":15,"eventType":"link"}]
    response = gd_requests(method='post', url=url, auth=auth, headers=headers, params=params, body=data)
    return response


def test_post_domoweb():
    """Test the post_domoweb function."""
    auth = {}
    response = post_domoweb()
    assert response.status_code == 200, f"Expected status code 200, got {response.status_code}"
    return response