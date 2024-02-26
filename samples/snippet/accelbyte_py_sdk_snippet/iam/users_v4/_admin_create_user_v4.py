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

Example: '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "0evxtpyCeVWQgWn6", "policyId": "Jl0NgPE08EpKB73Y", "policyVersionId": "zSx2DvJYBIGLzH4B"}, {"isAccepted": false, "localizedPolicyVersionId": "i1X0ENHwHaAfwL3p", "policyId": "PSiJgbTlkaaS6jlf", "policyVersionId": "3BTYGyZN3FTSxEhv"}, {"isAccepted": false, "localizedPolicyVersionId": "Tq9nJvje8Pei5cFY", "policyId": "nRYNkT7dY7t1NkIu", "policyVersionId": "mm2O7qBQNdsQHlSo"}], "authType": "EMAILPASSWD", "code": "hYeJsPcRxf3ZvRQY", "country": "tQb70y0niVHXbQ5d", "dateOfBirth": "Qsk3zMvpQ7HA6Nod", "displayName": "7XhGvwdbdvrCHgzn", "emailAddress": "KadSPUeRHr8Gb2kS", "password": "FOOY2Zb1BN6Z6Awn", "passwordMD5Sum": "tu9Z7DS8CALVTBEw", "reachMinimumAge": false, "uniqueDisplayName": "rTDjg2vbX0PBKw70", "username": "GkwkBXBEDcqZPX27"}'
"""

result, error = admin_create_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
