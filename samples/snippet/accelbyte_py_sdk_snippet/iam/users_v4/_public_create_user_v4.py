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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "GD2b1BvmVnznSYDu", "policyId": "A95xrVtKre4Ixtfe", "policyVersionId": "spOnBO4rOwSWxdTo"}, {"isAccepted": true, "localizedPolicyVersionId": "13ghGJfRQUAFs1yO", "policyId": "XNxf5bzHjhbft4Uj", "policyVersionId": "XNlpvHRcWQki7h56"}, {"isAccepted": true, "localizedPolicyVersionId": "BeaTlTQCcXo0EizS", "policyId": "E5w4zxI6wHudVJSA", "policyVersionId": "fVqWYCmHxcddg2m7"}], "authType": "EMAILPASSWD", "code": "rDANVuOvTDbckMkx", "country": "4d1rbdn3HClyLyUj", "dateOfBirth": "SusYf6xsGfmTOYsw", "displayName": "R4SWZ7Uji2q6enGH", "emailAddress": "lo3sx5COTpBSPoSb", "password": "E84YCXayjzLf7UVc", "passwordMD5Sum": "k5m1PSeOiSyXjnV9", "reachMinimumAge": true, "uniqueDisplayName": "suOwl5jhoWd1Fysf", "username": "JgbgCAtbDaDiqNiO"}'
"""

result, error = public_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
