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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "b8j6C3brkm9TPunm", "policyId": "WJB9KNddAIxpg7NC", "policyVersionId": "3o1pFdO8mrWgGvYE"}, {"isAccepted": true, "localizedPolicyVersionId": "BBLT4Tix3QBqafIx", "policyId": "3GdnyXlmHw3udK1K", "policyVersionId": "Og7Q1z771YoPWMgW"}, {"isAccepted": false, "localizedPolicyVersionId": "JEAi3jVecdwbZ3vR", "policyId": "O0t9CRYk35fKoLL4", "policyVersionId": "1rPGEAhTF6INX0Cz"}], "authType": "EMAILPASSWD", "code": "fMNMdVDHMw5Ymctk", "country": "ihbCGq5nEaKHarI4", "dateOfBirth": "PQhVY1QNK5ys2WOd", "displayName": "hRI3tjEqdb2sY1Zn", "emailAddress": "8Vd3omJZdqHUhxwR", "password": "K51Il8lt1PpS3dDY", "passwordMD5Sum": "Z1hiEaqpCVECldML", "reachMinimumAge": false, "uniqueDisplayName": "RRJM5IgV6Ojzr4y7", "username": "D32y4N1ohFN7qsi5"}'
"""

result, error = admin_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
