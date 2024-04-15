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

Example: '{"PasswordMD5Sum": "bQ6lgtoWsbbK3HiF", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wzpFQzuUBqDObEAU", "policyId": "WulupGNbdjP8QxSG", "policyVersionId": "gIdiTKmdfXSpwPzX"}, {"isAccepted": true, "localizedPolicyVersionId": "tEOYjcqK0Io8aNgH", "policyId": "1pzFgiA6PK0HKqnF", "policyVersionId": "w1juoRcq2rHRAqOg"}, {"isAccepted": false, "localizedPolicyVersionId": "USoVFf3tckUSElRW", "policyId": "6L7u6eSe3tEfwc3u", "policyVersionId": "Pr6KvE5yWoTB6vpo"}], "authType": "DgSZPh6lyQIrdQIx", "code": "coBJLYozk3dLtJ35", "country": "5OP2rXGibx36DZwY", "dateOfBirth": "Vbf7FiC8VJ2dRJPY", "displayName": "bFnfhD1LNsAHD4b1", "emailAddress": "6JFnIM6Xzx8tQfKM", "password": "4OOZXppTbCaxTRUi", "reachMinimumAge": true, "uniqueDisplayName": "JNOW6ptRV86QxecY"}'
"""

result, error = create_user_from_invitation_v3(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
