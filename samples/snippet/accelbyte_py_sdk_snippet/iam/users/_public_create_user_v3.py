import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_create_user_v3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateRequestV3
from accelbyte_py_sdk.api.iam.models import ModelUserCreateResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUserCreateRequestV3
password_md5_sum: str
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
reach_minimum_age: bool
unique_display_name: str

Example: '{"PasswordMD5Sum": "Q5aEMdJExsMZEnan", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "9Xg119GEDCEw1DQA", "policyId": "G0G7can9WFCWnVd3", "policyVersionId": "A1Bhtm9XkjGyyA9r"}, {"isAccepted": false, "localizedPolicyVersionId": "7A3IauLOEReKvolB", "policyId": "opPoyt1wts8pNDBN", "policyVersionId": "JgUHknKUGfRU1XYk"}, {"isAccepted": true, "localizedPolicyVersionId": "iky0hc9AZLdLMpb1", "policyId": "8JRr4DvmIK45k96N", "policyVersionId": "T8x5pDR0rX2AmcDD"}], "authType": "sEx9jZpnkXRV7YaD", "code": "l5lPM4N04apXQoVg", "country": "yV1hVXlnepIYGXOr", "dateOfBirth": "Uyt06RNqJXXhumuT", "displayName": "oUCaIXFDq0OEW2mu", "emailAddress": "AgkEhyVLTOPzzOtW", "password": "NiBMmItxsUvNcad5", "reachMinimumAge": true, "uniqueDisplayName": "dxzNhJxwebR7twzy"}'
"""

result, error = public_create_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
