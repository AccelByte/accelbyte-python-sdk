import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_user_from_invitation_v4
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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7pFrkApG2ghPvmb7", "policyId": "5Qr0HlawdAXVZsBh", "policyVersionId": "N09FbQtK0dPXiiJg"}, {"isAccepted": false, "localizedPolicyVersionId": "NznaqMOMVVU7gb8z", "policyId": "zyqbZE2lXBkq8DMh", "policyVersionId": "EqeLxhKsfQEbIfDI"}, {"isAccepted": true, "localizedPolicyVersionId": "2JNBgXIxmDs6fW0Z", "policyId": "kRB8i7fGlUSicdRT", "policyVersionId": "yn2Wdi8TLSKGaIVK"}], "authType": "EMAILPASSWD", "code": "MiGte0xAFAGSsNJj", "country": "vwI6BswxD3bPyUgp", "dateOfBirth": "U35PaZiGJH9qDUUZ", "displayName": "tlB6Upzp3TyIVMhx", "emailAddress": "UJJ0WkrzU6AEHynp", "password": "UMSsj3YNntIZXNJJ", "passwordMD5Sum": "78QVUcJDpabkUleJ", "reachMinimumAge": true, "uniqueDisplayName": "LC1W3Kr64TISpHBo", "username": "kwTXCsmuwW5JVpSd"}'
"""

result, error = create_user_from_invitation_v4(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
