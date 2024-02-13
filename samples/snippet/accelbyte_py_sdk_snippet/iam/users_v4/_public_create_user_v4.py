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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "cS7ET8ylkAbMUFfP", "policyId": "jSwN7int35I4vwed", "policyVersionId": "x34B5561RV4t1zbb"}, {"isAccepted": false, "localizedPolicyVersionId": "Df4RykjwK4VYV7Y2", "policyId": "wSXNpjkml1jpVJtt", "policyVersionId": "djN6XPArgAtoIqoa"}, {"isAccepted": false, "localizedPolicyVersionId": "U3zJI3dGK8NjbTM0", "policyId": "yXtzGYXXdPDiAMmG", "policyVersionId": "LZgigOYBtouhvgQG"}], "authType": "EMAILPASSWD", "code": "vFmdcyQ6glxMvLKL", "country": "z4V7rVVGY3ZwWoEM", "dateOfBirth": "RPYEYqPWs4GlNnoe", "displayName": "14cXTD6GhkL4dVg4", "emailAddress": "r3HTMuWZMuTbtNyz", "password": "FU0UpcPkW9HpeiVY", "passwordMD5Sum": "PGWUmvtR6bscCgf8", "reachMinimumAge": true, "uniqueDisplayName": "6iZNhS5KR4g95MLT", "username": "SBKySrxhIprw41v6"}'
"""

result, error = public_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
