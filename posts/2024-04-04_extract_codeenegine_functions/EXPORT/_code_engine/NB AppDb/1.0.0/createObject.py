"""
"""

def createObject(domo_instance, idp_id, company_id, user_name, email, role_name, role_id, event_timestamp, crte_usr_status_code):
    # Create a dictionary with the input variables
    data_object = {
        "domo_instance": domo_instance,
        "idp_id": idp_id,
        "company_id": company_id,
        "user_name": user_name,
        "email": email,
        "role_name": role_name,
        "role_id": role_id,
        "event_timestamp": event_timestamp,
        "crte_usr_status_code": crte_usr_status_code
    