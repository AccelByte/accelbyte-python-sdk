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

Example: '{"PasswordMD5Sum": "nkoRjEC6WGSzbt9z", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "vFTb5sfCRunuZvfl", "policyId": "rw47f0rmN4GzOhXh", "policyVersionId": "RsjgwZo0ZcZXQAtz"}, {"isAccepted": true, "localizedPolicyVersionId": "DzISGnu5agisjmtH", "policyId": "Qh7qTc4EG2DAFs3D", "policyVersionId": "4c66BOvXnRd4gjvW"}, {"isAccepted": true, "localizedPolicyVersionId": "13I1asmnRorrKOsZ", "policyId": "u0bi8imuiyP2tZN4", "policyVersionId": "msX6033eQNSkWnv4"}], "authType": "UQ9dXH3Nv3KULQwg", "code": "lUv3VmqAM2ZERY13", "country": "KChhAzRziYTNCCUj", "dateOfBirth": "Pf6RvE2xhy4l65MD", "displayName": "1fkIqc19crFpsUnB", "emailAddress": "Wesa0FuLFN8svgeg", "password": "A7KZ8Ju6wpj7zDO5", "reachMinimumAge": true, "uniqueDisplayName": "9hrFBYxennQcfu2t"}'
"""

result, error = public_create_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
