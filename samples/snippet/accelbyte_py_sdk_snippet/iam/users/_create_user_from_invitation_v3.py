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

Example: '{"PasswordMD5Sum": "YvLmbqf76811CrCO", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "VqzyjXmNxdCvDSDB", "policyId": "BIf8YjyRnH9N2Ykf", "policyVersionId": "2AqUS4MgfPFzTCsu"}, {"isAccepted": false, "localizedPolicyVersionId": "WAsxtxnYzNTxIZYu", "policyId": "JY6J3cY32XlwhisP", "policyVersionId": "01579S2uapJG8zTb"}, {"isAccepted": true, "localizedPolicyVersionId": "WlWgxfw8uwlFI0ui", "policyId": "1TEg3TEjU1fJPgJG", "policyVersionId": "TIZK5mXadbXYrRc2"}], "authType": "CsZsAQfOdcqpcLYR", "code": "BnFNQuuZDTacvEwC", "country": "mUEo4XDF4lBxVrJB", "dateOfBirth": "jH1tjc8qrJldRkFU", "displayName": "xWEs4xPe5APagYK7", "emailAddress": "2SoBg7GKOehz6hly", "password": "4qG5EBsYPRzXicq3", "reachMinimumAge": true, "uniqueDisplayName": "KgIofVFZtc5FYaEO"}'
"""

result, error = create_user_from_invitation_v3(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
