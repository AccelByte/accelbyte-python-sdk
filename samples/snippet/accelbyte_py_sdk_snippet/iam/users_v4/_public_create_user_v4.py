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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "usVpeBmlIBAu4nhw", "policyId": "25jb7kQLv7KrGeFR", "policyVersionId": "ojRCen3TkjXigtwu"}, {"isAccepted": true, "localizedPolicyVersionId": "ObIvZvhN3onZf4hm", "policyId": "J2aB7cpz1FFFpI0c", "policyVersionId": "VCtk35IfxQqGHzIW"}, {"isAccepted": true, "localizedPolicyVersionId": "ufKyv7G4Ty9MnYwD", "policyId": "fh5IgvzALhpsaO2j", "policyVersionId": "8urX4ftj2IV5Suh2"}], "authType": "EMAILPASSWD", "code": "yIIXjatPrXzekpFl", "country": "KU6EN7pXs10vvkDI", "dateOfBirth": "F3QLyL4OAvz5B23Z", "displayName": "sQv7dMRohXyuQI6q", "emailAddress": "rb7LE6vojE8JfbkW", "password": "89gxv2GrltEaUgK5", "passwordMD5Sum": "qOJsZ1LZ86ICrsVb", "reachMinimumAge": false, "uniqueDisplayName": "ncCxkY4oQJyeI6aJ", "username": "CQgNaZY4cPmb74RE"}'
"""

result, error = public_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
