import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import create_user_from_invitation_v4
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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "xQ1weByo5Ze9BgcQ", "policyId": "f1RlYVlrlZN5nMCl", "policyVersionId": "PBNawawtjajA70J0"}, {"isAccepted": true, "localizedPolicyVersionId": "KswvenAWTbBUB9Bb", "policyId": "6mTNgqvhMwgMFcv5", "policyVersionId": "JzX5drn61iA1U34U"}, {"isAccepted": false, "localizedPolicyVersionId": "XYfv2vg2IUyXjQWt", "policyId": "SLMLNKQr0pt8zBgC", "policyVersionId": "kr7V4klUAWIWvcoc"}], "authType": "EMAILPASSWD", "code": "I3tj1BkHk9jxT9B6", "country": "eTNTyJiXpBl9PPM5", "dateOfBirth": "NBf8WZq0bA2LYvlj", "displayName": "ZQ3hgujLzyHw36aG", "emailAddress": "soqHe0ZFEt8vP94I", "password": "rPzSNs5SBkMJSLHs", "passwordMD5Sum": "kFxgFalUU0XgxNNn", "reachMinimumAge": true, "uniqueDisplayName": "hDU8bMg6bMbUsHDH", "username": "blLDORnvHuJvrGbm"}'
"""

result, error = create_user_from_invitation_v4(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
