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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YIPCuwykwXial3op", "policyId": "KydLwODJjJyeIBGm", "policyVersionId": "fg6WGRunlt2vwaYC"}, {"isAccepted": true, "localizedPolicyVersionId": "xLrCnS795xAtlnch", "policyId": "m5weiI1kaNKZOlU0", "policyVersionId": "Cg68yygDpYGIKSua"}, {"isAccepted": false, "localizedPolicyVersionId": "4KFZt1qLEeQjOr2C", "policyId": "khh84y22JSQCL0i9", "policyVersionId": "Lty325f4SZZoh7og"}], "authType": "EMAILPASSWD", "country": "tqIrmygwwJkwHBhN", "dateOfBirth": "hHqMhQjhtyle5Grl", "displayName": "2RNrcM1jkL1NeypV", "emailAddress": "gDDFOS3ozEI8lpal", "password": "9fK55D33ktU2b1OE", "passwordMD5Sum": "DtGMDYUKygMdjRwz", "uniqueDisplayName": "dpYCFLv3CKZRQGeE", "username": "URdWtGpITMQJJ3MJ", "verified": true}'
"""

result, error = public_create_test_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
