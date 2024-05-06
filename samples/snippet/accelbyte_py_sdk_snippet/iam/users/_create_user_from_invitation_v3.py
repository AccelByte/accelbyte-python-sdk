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

Example: '{"PasswordMD5Sum": "iQp1UxZqhmTrDyh2", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YuBqVjl82UWukcSM", "policyId": "mud8B4IveMmonZRG", "policyVersionId": "JgqLwzoGCLvJLbmj"}, {"isAccepted": false, "localizedPolicyVersionId": "gnL7t5mpgF4bJ8dD", "policyId": "s0SFdNl7Jypy1tm7", "policyVersionId": "aqR1DYHCKT9idaqU"}, {"isAccepted": false, "localizedPolicyVersionId": "B231WKhcLEmM94rT", "policyId": "oorqtlcDx3L3bAC0", "policyVersionId": "58k5j71A8KcSVdjN"}], "authType": "j4ba1jWBk5idV513", "code": "AseDkdRh1sjA0bCi", "country": "HC1KCid8do73lrbF", "dateOfBirth": "9JbEVZz9ezqNoQfi", "displayName": "D4lGUkl91YAlb74d", "emailAddress": "nyqp00PNazdAZneX", "password": "QawKt2NhzkpjDLVR", "reachMinimumAge": false, "uniqueDisplayName": "2qsRJhlsGFcYkhsg"}'
"""

result, error = create_user_from_invitation_v3(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
