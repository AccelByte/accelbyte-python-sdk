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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qMyayiIkyVCbpR5D", "policyId": "kifiSK0b8QzlO2GO", "policyVersionId": "fgnikEp2Fb4SczTG"}, {"isAccepted": true, "localizedPolicyVersionId": "BiLbA66QReVRWyjw", "policyId": "SWsn4HplPzQYcgVS", "policyVersionId": "EYcK657BzxMBYUkH"}, {"isAccepted": false, "localizedPolicyVersionId": "9CprK0ol4ZQzKB7D", "policyId": "BjMpanQ3AlRKRuxE", "policyVersionId": "NmlV9MXjfRbCacuX"}], "authType": "EMAILPASSWD", "code": "VvOK83cV3sYfwWVB", "country": "UHnFjbmJEN3mzCRd", "dateOfBirth": "Vj2nqERX6KMSlc0N", "displayName": "uEjfVb04iaUsJnJ0", "emailAddress": "To00SeADSSCwbcAH", "password": "HGSvgbx3bstUtuug", "passwordMD5Sum": "xlRqvekTwIciyr3c", "reachMinimumAge": false, "uniqueDisplayName": "mcCJYGZN7a9jNTKW", "username": "Q4v6Yawg0fyivso0"}'
"""

result, error = create_user_from_invitation_v4(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
