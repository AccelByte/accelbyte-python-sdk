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

Example: '{"PasswordMD5Sum": "S5PUKOWQlbFPRseA", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dKEcrhBnFQEFgBXH", "policyId": "ZaySDCkyxXkNEUsD", "policyVersionId": "xQ0X5LZjpPLHKTUk"}, {"isAccepted": false, "localizedPolicyVersionId": "YgNz7LCKouTf80ob", "policyId": "SspJsVgcO0z3FtKC", "policyVersionId": "TwYDLgSnaQz9r9Dm"}, {"isAccepted": false, "localizedPolicyVersionId": "RmtLqEjEfk1v8WOB", "policyId": "rvzvfW3D5llfwG9f", "policyVersionId": "5v63ct3pnKo09vRN"}], "authType": "XAGWtSxeCas1CbLk", "code": "rEAMCIKSksQ1nMQY", "country": "TR9VRwnXI8TTSdC7", "dateOfBirth": "B3lItchE7CbAhtte", "displayName": "gnkm1lBECKvg4XAp", "emailAddress": "4OC3woOEuLOcNeQT", "password": "OXgGcQE0L1D0uRnp", "reachMinimumAge": true, "uniqueDisplayName": "NV0Uj8dzVTG5NlYz"}'
"""

result, error = create_user_from_invitation_v3(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
