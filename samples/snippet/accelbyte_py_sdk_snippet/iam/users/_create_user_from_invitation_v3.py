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

Example: '{"PasswordMD5Sum": "kjvRi90kSpT4tWXX", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ZYuXwsr24pOJfw41", "policyId": "kZtgCsJmZ240Zg4t", "policyVersionId": "hs3gNVSGFAqdccPF"}, {"isAccepted": false, "localizedPolicyVersionId": "9ivHfIjiSzyoZP9K", "policyId": "YyOguIlO1uRB3GgQ", "policyVersionId": "l2k2yqzWZ6SQroBe"}, {"isAccepted": false, "localizedPolicyVersionId": "5088JqcsyDa0XXsT", "policyId": "7cu2FbPPwDFwZe8d", "policyVersionId": "s8pKnO68q7C7Ai1o"}], "authType": "ytNL4VFzEZ1Hb4oW", "code": "We7guLK9e7pyuCmV", "country": "H4CdN0FfKBKJRw4p", "dateOfBirth": "VPfUHXrMU0cdxOs0", "displayName": "buBwGGpdjA09WJUa", "emailAddress": "p3PgvDxCV22PYAvu", "password": "2zUl0Xmpjl6JTzHj", "reachMinimumAge": false, "uniqueDisplayName": "8MypOGJci3jy071X"}'
"""

result, error = create_user_from_invitation_v3(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
