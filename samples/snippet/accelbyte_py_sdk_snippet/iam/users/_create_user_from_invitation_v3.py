import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_user_from_invitation_v3
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

Example: '{"PasswordMD5Sum": "NWkLKzqTSPBpuCRV", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "BFfxF0uXSV0I2Qq5", "policyId": "ZfI1U7TssuVEBAnK", "policyVersionId": "eH1CGjfouMbM7jZz"}, {"isAccepted": false, "localizedPolicyVersionId": "YD6XcgSIe8poxixe", "policyId": "ivpMLZVje6sR9ZYc", "policyVersionId": "1fkPxDEhUn4X2OFM"}, {"isAccepted": false, "localizedPolicyVersionId": "dcBEZ1AK8OzxoNFL", "policyId": "MXdu3o1pc38YUBUi", "policyVersionId": "R1RvSSvnl6OjhlHv"}], "authType": "mpYWPB1GeQ2fu7BJ", "code": "bJtLjIusOjfuS2J5", "country": "nlXpdXQvsqtBG8Ga", "dateOfBirth": "yl6aFP4fr9yyvnTp", "displayName": "HJDUWJRUbC2XrNEZ", "emailAddress": "xS9rBwuLBW4io2T7", "password": "gAA35AKbirTqgA8R", "reachMinimumAge": true, "uniqueDisplayName": "mAAMUJvtG7Cqa6yX"}'
"""

result, error = create_user_from_invitation_v3(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
