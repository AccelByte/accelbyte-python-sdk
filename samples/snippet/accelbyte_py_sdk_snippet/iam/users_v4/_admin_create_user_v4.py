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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "iDRU61IMM0gQ5XUQ", "policyId": "aifK3bXtlYgcqaMw", "policyVersionId": "F05yRoRM32WqHYSI"}, {"isAccepted": false, "localizedPolicyVersionId": "K1stgUjde9sg01gd", "policyId": "fWzyiBGtTy86iYtH", "policyVersionId": "Kaf1jpCVIulwb0cm"}, {"isAccepted": false, "localizedPolicyVersionId": "E4WZ2K0AIZmzt7ge", "policyId": "bEu3Zx2ZpmSDayWb", "policyVersionId": "xSCzYb92OZ4RWpIY"}], "authType": "EMAILPASSWD", "code": "xQnhKhUjCm8cbsmC", "country": "Elzd6lIV19UyyNuc", "dateOfBirth": "Lwpu4rJGkpAetoo8", "displayName": "IWPExpRvthXbJKG7", "emailAddress": "APDIytXjtnE999K3", "password": "6AXJXrhUZRQrAkRR", "passwordMD5Sum": "wR7xymBBTzZYoHdy", "reachMinimumAge": true, "uniqueDisplayName": "qy6sbORCdzsvuaM9", "username": "c7pcL6FzTsDR3M7C"}'
"""

result, error = admin_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
