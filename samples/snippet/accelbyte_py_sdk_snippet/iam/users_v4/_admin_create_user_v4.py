import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_create_user_v4
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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "U2I09fydBZe6SUzX", "policyId": "Gudz3qnkm6FHLjJc", "policyVersionId": "1CbJC7thBdB8rYxL"}, {"isAccepted": false, "localizedPolicyVersionId": "5Byiib3g9RGscsBi", "policyId": "1Be0RzWxJaPs8sOe", "policyVersionId": "eTNQ7WfIxmjHFS68"}, {"isAccepted": true, "localizedPolicyVersionId": "PML1Ls4aUoH40pB6", "policyId": "MlLTqxRMg6IOmamw", "policyVersionId": "5qSKNm8Wk7C3dbgJ"}], "authType": "EMAILPASSWD", "code": "VpvfXRxz76WBeJAu", "country": "BaAIDUJj5VcKDfy2", "dateOfBirth": "xQmu6Lz8XILOuZfV", "displayName": "EntvbePKpvWt6Ggs", "emailAddress": "MB0ChyQPEqdW3nXz", "password": "Qj7Sx2O6IX1jDthO", "passwordMD5Sum": "0S3QxipXvY2bCtvU", "reachMinimumAge": true, "uniqueDisplayName": "yazSO7xcwCk19jSn", "username": "h0b4sWsvE7HS8vDO"}'
"""

result, error = admin_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
