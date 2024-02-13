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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Y42uF0TL0ySYQx8n", "policyId": "6HP62F2SuHtrC8vd", "policyVersionId": "3eftHooJM7DVpckr"}, {"isAccepted": false, "localizedPolicyVersionId": "qLwHAJ6nzky2Ue8U", "policyId": "vSjUP1jBlGm2VHQq", "policyVersionId": "s6ih4aTWGKPuRGnY"}, {"isAccepted": true, "localizedPolicyVersionId": "ydPlXNBkqipQfdtP", "policyId": "XDMzm08UXGcMc6Zy", "policyVersionId": "GVPfLIxAAU8aDYdw"}], "authType": "EMAILPASSWD", "code": "tYthM4hIpPSIgca7", "country": "xhIKL5eBRo8wCNdv", "dateOfBirth": "jxjy3IOCtDPmyxoh", "displayName": "SaDpustK4Q14pPDi", "emailAddress": "5gXFHYLMIG8TKJfA", "password": "irDZkkYJVKqKlKWF", "passwordMD5Sum": "1V3JDLHovG95Pczf", "reachMinimumAge": false, "uniqueDisplayName": "wRwUKbXumKH5GYxz", "username": "ryIqzMUwFX7fe99Y"}'
"""

result, error = create_user_from_invitation_v4(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
