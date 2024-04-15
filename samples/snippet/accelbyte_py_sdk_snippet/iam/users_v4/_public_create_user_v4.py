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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Miv9iHgHBa5tdEJG", "policyId": "cwo07AX1QHKezHKU", "policyVersionId": "dCsKy2APppOn3wZ5"}, {"isAccepted": false, "localizedPolicyVersionId": "GohfdZgxOFem3Qw7", "policyId": "PpaT5PfLLz1VCIzG", "policyVersionId": "cHzPG5XswLIN1ilv"}, {"isAccepted": true, "localizedPolicyVersionId": "xCn3t6Ug87fwHA5P", "policyId": "BzQwApiIp0F3SDx8", "policyVersionId": "xBdm0W9exedfyQTo"}], "authType": "EMAILPASSWD", "code": "vO9SLh7FsiiRCZHW", "country": "X1p4xavVImftqFHu", "dateOfBirth": "npke4RTzk9b66pYQ", "displayName": "au0DS4LhTWVcMKRG", "emailAddress": "eHelXSQdyPLkl4BC", "password": "zoBEfyMSGNL87CF9", "passwordMD5Sum": "ApvBx85iFXcDTMnJ", "reachMinimumAge": false, "uniqueDisplayName": "aEgipU2lm8so8nrL", "username": "p3bCqwQ74JZeew99"}'
"""

result, error = public_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
