import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_create_test_user_v4
from accelbyte_py_sdk.api.iam.models import AccountCreateTestUserRequestV4
from accelbyte_py_sdk.api.iam.models import AccountCreateUserResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountCreateTestUserRequestV4
accepted_policies: List[LegalAcceptedPoliciesRequest]
Definition: List[LegalAcceptedPoliciesRequest]
    is_accepted: bool
    localized_policy_version_id: str
    policy_id: str
    policy_version_id: str
auth_type: str
country: str
date_of_birth: str
display_name: str
email_address: str
password: str
password_md5_sum: str
unique_display_name: str
username: str
verified: bool

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "xNWgCw0aWzC0m3C3", "policyId": "VkBqPPvBCBNBhwAO", "policyVersionId": "2ZWZK9A2xrZ1wgAG"}, {"isAccepted": false, "localizedPolicyVersionId": "aXBOaepyrIofC5F8", "policyId": "R18YLkLFRSx2pCG1", "policyVersionId": "X04lkVQEN0TQtMry"}, {"isAccepted": false, "localizedPolicyVersionId": "BCguLmbJ3mede6a5", "policyId": "bT1xxSGgnuooBwym", "policyVersionId": "jjrIYMBEeFUzaVWY"}], "authType": "EMAILPASSWD", "country": "Z8UaNwQPkFaTSY52", "dateOfBirth": "rpAqgoS1mRrOGwEh", "displayName": "g9B7JqXouh89Sv79", "emailAddress": "UyrgBK4VYLNcFKK3", "password": "Y0wTdjX2JomXlKJx", "passwordMD5Sum": "znB1FqGkzqZQqXqZ", "uniqueDisplayName": "wWaa3H4wdNpMPsWs", "username": "a2z8rsXz4KP5ioyr", "verified": false}'
"""

result, error = public_create_test_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
