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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "6mngv6Kl8FfTQpbi", "policyId": "cCfe62k6s9YYMUpd", "policyVersionId": "b9KmowzBXhCtZf6G"}, {"isAccepted": false, "localizedPolicyVersionId": "MEntBXeT31fkXBhf", "policyId": "PZVxEQavP4xRdpPj", "policyVersionId": "6xB8U6ggAi5oGHiH"}, {"isAccepted": false, "localizedPolicyVersionId": "wY75MwU4p2dg7euu", "policyId": "n8SdLtpotFPBAJfu", "policyVersionId": "ZJWuwq28hRsSmrB1"}], "authType": "EMAILPASSWD", "country": "hwjIjUAPJsdYAzhW", "dateOfBirth": "3imiueBWBMxC1R1o", "displayName": "tM7vplqyPgAYCAXY", "emailAddress": "SNZnfbZwakhR0Hoa", "password": "3osWRrB6MFTG8MA0", "passwordMD5Sum": "C46HPc5U8XcxsI7p", "uniqueDisplayName": "7cmeSTFYDRnSyuF6", "username": "vENc77XnZntaHRTP", "verified": false}'
"""

result, error = public_create_test_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
