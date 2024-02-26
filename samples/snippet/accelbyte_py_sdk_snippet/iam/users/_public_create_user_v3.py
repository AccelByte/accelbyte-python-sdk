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

Example: '{"PasswordMD5Sum": "A0d7i60hK0zARx5h", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "u8DMRa7A6r6HsjKm", "policyId": "zMQHkGLhY7IDsptj", "policyVersionId": "S4nFV7w3IAbFFCZ1"}, {"isAccepted": true, "localizedPolicyVersionId": "2rPoAo2TcrkSOP70", "policyId": "z99uDjbAFCY2BT9E", "policyVersionId": "skJGtNJ1JWU5Tmyo"}, {"isAccepted": true, "localizedPolicyVersionId": "zy0JDIPFp5gBmEs6", "policyId": "VQC6Z7EEaNm2iUQn", "policyVersionId": "4XLCpOaQWZMJT8QC"}], "authType": "Rtijh9BJopAnBQ9A", "code": "czbxAtJ5aC24fr3W", "country": "xMtLzaouCzpwYOqz", "dateOfBirth": "A1lW2PlKQp1UWdhJ", "displayName": "CDL53qCw1DfVHbVm", "emailAddress": "Ph1h5Jlm18hAcOtL", "password": "yuqCkGJqIYGMUnCh", "reachMinimumAge": false, "uniqueDisplayName": "52x6UtNab5S3ZxAh"}'
"""

result, error = public_create_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
