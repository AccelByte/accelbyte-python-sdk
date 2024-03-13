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

Example: '{"PasswordMD5Sum": "mArxwKXHRrSEJl1Q", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "F2hB48fmLrcZwIfQ", "policyId": "sPKWQsMvAleCzBHi", "policyVersionId": "xnDyhBQW7gcwpLTS"}, {"isAccepted": true, "localizedPolicyVersionId": "jKxilQ7WVs5giDXq", "policyId": "7vBa4yz3wvqFw6M8", "policyVersionId": "Z2fxsJ0RkKfWRZYs"}, {"isAccepted": true, "localizedPolicyVersionId": "P3gNnbr88tOHQgxW", "policyId": "xg559W2TxYLDCnMp", "policyVersionId": "deIMDRPRP9fI11D6"}], "authType": "FbAOKUZL8r0JfKTb", "code": "ssaeEx39rAiA0Loe", "country": "s7GZSjzwiYy0FQIu", "dateOfBirth": "CHCi3KcCqbC4GMIg", "displayName": "jWq5c3Z0sG2Tmx3a", "emailAddress": "7GlvZ2WusG9YHQNE", "password": "ne5ppoBw3FSsVfLA", "reachMinimumAge": false, "uniqueDisplayName": "uD2NlnZJDIe6resx"}'
"""

result, error = public_create_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
