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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "KEni92rjjIpEeVRR", "policyId": "0Ou7TTBglpbHnbh9", "policyVersionId": "fMjlds2e6Is5SiHm"}, {"isAccepted": false, "localizedPolicyVersionId": "8W7Al4s3woYk56Uh", "policyId": "bFFrskZIXEk2UZJV", "policyVersionId": "xJfQiGT2VW0Ka6aT"}, {"isAccepted": false, "localizedPolicyVersionId": "v35uvjTIs2fWvbfp", "policyId": "xoJTt46ICl12gYJy", "policyVersionId": "1KoC2vvlzX9OBCg9"}], "authType": "EMAILPASSWD", "code": "cMnjSHwYfRjZ9GKV", "country": "8xuc64VVBRkAXM83", "dateOfBirth": "mfuDY6zCHYwrn7xP", "displayName": "4Mje8ZyNsuyDW2rJ", "emailAddress": "TZEWgqd6k0PVEEdA", "password": "mtL3ZGxEphXAlHpz", "passwordMD5Sum": "Azxi3DFOmZWOQpOd", "reachMinimumAge": false, "uniqueDisplayName": "osUmPG4AMN5KGVOr", "username": "Z2asjqrj4xXxvYP8"}'
"""

result, error = admin_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
