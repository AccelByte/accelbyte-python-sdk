import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_create_user_v4
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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "FymlIAqeDinX4m6q", "policyId": "hm5CDN7RiVKoQyu4", "policyVersionId": "ts5jffdijONkhif4"}, {"isAccepted": false, "localizedPolicyVersionId": "WhBrZlNnEbKITE3w", "policyId": "yWnHAOiNGEmvJopb", "policyVersionId": "JCelr9YL0t59qR8a"}, {"isAccepted": false, "localizedPolicyVersionId": "Ly0VFVaiHv9Lvv4s", "policyId": "UyJ0JvCxOOh0bxpj", "policyVersionId": "lnqzpJ8y9GoR8kZa"}], "authType": "EMAILPASSWD", "code": "VT10D0sn2Yrx8F0a", "country": "mkRly1EhpQSzbpPh", "dateOfBirth": "Gxc42KT5Tl30ZOVw", "displayName": "q9W9WlTcDfPENmhh", "emailAddress": "jmQXtcVfvfDRCLv1", "password": "foB4Iqd7w7T21NGn", "passwordMD5Sum": "gLByJ9dhyCmrNhzL", "reachMinimumAge": true, "uniqueDisplayName": "5ZsFaJnE8sgLBv92", "username": "h5nI0n8qGTeuhe4Z"}'
"""

result, error = admin_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
