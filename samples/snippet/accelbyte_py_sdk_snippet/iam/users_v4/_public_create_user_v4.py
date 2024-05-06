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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "uD58AmvucYn4OQlE", "policyId": "PygkCcniNDY0kXFv", "policyVersionId": "nSPySjdjEgxmAi4n"}, {"isAccepted": true, "localizedPolicyVersionId": "UCFgZuk6vfjjpDrm", "policyId": "xjpOYynfrw0q9Iy4", "policyVersionId": "vmuySnTAdFI8Nt1t"}, {"isAccepted": true, "localizedPolicyVersionId": "CdLvvBx1J7rqw4R1", "policyId": "3IZhVSpLn2g1tyrE", "policyVersionId": "CtdeNcTSmipkTouR"}], "authType": "EMAILPASSWD", "code": "tKXx3DJ41neZR2ro", "country": "kC5eAoseKOcxkgfA", "dateOfBirth": "yJoLG90yUcLDcbeV", "displayName": "UtdMpr3NmJugXOlQ", "emailAddress": "7apO5k9BQ3GdlkgL", "password": "p4jf4Z02syzuCQgE", "passwordMD5Sum": "7RjYpEfeJxoiwkBD", "reachMinimumAge": false, "uniqueDisplayName": "1fCLRot48W3fn36R", "username": "S0hrnKBt3fGgKgE6"}'
"""

result, error = public_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
