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

Example: '{"PasswordMD5Sum": "x72zRa5Zi5b36JPu", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "fyRbJw4Z29EWdnhZ", "policyId": "xgL4D4t3vOGE01ZR", "policyVersionId": "1d1k6vxcaHBokO4M"}, {"isAccepted": true, "localizedPolicyVersionId": "6e9dP0aJ2zffSabd", "policyId": "b3LlcIUQcD8ctW9C", "policyVersionId": "driTqcgYWqEtIrmG"}, {"isAccepted": false, "localizedPolicyVersionId": "cn0iijYw587FJFcB", "policyId": "MTyPojnV01Xh26Cl", "policyVersionId": "EgY2yWAaLY2WhRy6"}], "authType": "9xqQOduUSg6NdvZL", "code": "t6izOAZtzZ7WesoV", "country": "Uj02lcDz3TXEYi33", "dateOfBirth": "P0pUXzQSumv9y13N", "displayName": "ehR8Q4RroBdghS6A", "emailAddress": "U63wusCFmOnIbC2k", "password": "IslVgAK81xSdqQeB", "reachMinimumAge": true, "uniqueDisplayName": "I7GAeMMplLkZjQOO"}'
"""

result, error = public_create_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
