import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_create_user_v4
from accelbyte_py_sdk.api.iam.models import AccountCreateUserRequestV4
from accelbyte_py_sdk.api.iam.models import AccountCreateUserResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountCreateUserRequestV4
accepted_policies: List[LegalAcceptedPoliciesRequest]
Definition: List[LegalAcceptedPoliciesRequest]
    is_accepted: bool
    localized_policy_version_id: str
    policy_id: str
    policy_version_id: str
auth_type: str
code: str
country: str
date_of_birth: str
display_name: str
email_address: str
password: str
password_md5_sum: str
reach_minimum_age: bool
unique_display_name: str
username: str

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wMibQbTLWED7Bkfk", "policyId": "xAPqiolGZDuU8XPa", "policyVersionId": "OtL2X53L4xEAS4Mn"}, {"isAccepted": false, "localizedPolicyVersionId": "pxNtEHv1tnTrC3Qr", "policyId": "rhGMFO9NTTU2y2AR", "policyVersionId": "PpnhzUjXqAjDQSsv"}, {"isAccepted": false, "localizedPolicyVersionId": "YZmUWsfBbjkUFbhs", "policyId": "rpoJfHwXV5ZiDSFG", "policyVersionId": "6zYt8IwcsrLZtI1E"}], "authType": "EMAILPASSWD", "code": "s6vuEufq4VallM5b", "country": "X70cVZdZPWe0DbJL", "dateOfBirth": "JFKqkl1GcmrruaBZ", "displayName": "frLx7mlepOV7HDEM", "emailAddress": "l0pYqonkVBul2Pg8", "password": "nfuqYyCIQwJxOeEF", "passwordMD5Sum": "0N0xxFJT5zOBgiKN", "reachMinimumAge": false, "uniqueDisplayName": "Rd57zf6k838CkEMu", "username": "TDI9jVY12lw2EDrT"}'
"""

result, error = public_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
