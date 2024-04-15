import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_create_test_user_v4
from accelbyte_py_sdk.api.iam.models import AccountCreateTestUserRequestV4
from accelbyte_py_sdk.api.iam.models import AccountCreateUserResponseV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountCreateTestUserRequestV4
accepted_policies: List[LegalAcceptedPoliciesRequest]
Definition: List[LegalAcceptedPoliciesRequest]
    is_accepted: bool
    localized_policy_version_id: str
    policy_id: str
    policy_version_id: str
auth_type: str
country: str
date_of_birth: str
display_name: str
email_address: str
password: str
password_md5_sum: str
unique_display_name: str
username: str
verified: bool

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "SYK8f7RAS7puQc6i", "policyId": "urU5NH3dkJoBrCb7", "policyVersionId": "jtx7tFeR2LhA0nbN"}, {"isAccepted": true, "localizedPolicyVersionId": "03UEbkQeTDQMBDD7", "policyId": "84O5AtdMokYUvBU7", "policyVersionId": "MCiQFOfHGUbK7zR4"}, {"isAccepted": true, "localizedPolicyVersionId": "gVFdTvmiBKR1yMyO", "policyId": "oJbqn4WLQojCy6tI", "policyVersionId": "znQr2s8i8gR29THl"}], "authType": "EMAILPASSWD", "country": "HIz5scA51Fn3ECWM", "dateOfBirth": "SRDpH76ZOZuSTchr", "displayName": "BA9nZ2z3iHpArcXM", "emailAddress": "qCMhOluqSgGT86Ob", "password": "e4Ur3EgK24NHTvld", "passwordMD5Sum": "KDjGW3mzRCcUANkz", "uniqueDisplayName": "qheK9FTp5cYrM9Qx", "username": "SaiT2Tc5WmALd81B", "verified": false}'
"""

result, error = public_create_test_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
