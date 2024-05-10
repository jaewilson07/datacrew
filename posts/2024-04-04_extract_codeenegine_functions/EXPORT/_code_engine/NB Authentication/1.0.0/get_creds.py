"""
"""

def get_creds(account_name):
    try:
        creds = codeengine.get_account(account_name)
        credentials = json.loads(creds["properties"]["credentials"])
        return {
            "DOMO_USERNAME": credentials["DOMO_USERNAME"],
            "DOMO_PASSWORD": credentials["DOMO_PASSWORD"]
        