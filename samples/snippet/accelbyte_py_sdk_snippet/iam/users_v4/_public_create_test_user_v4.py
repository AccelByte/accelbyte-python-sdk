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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rJAJVbg8es98vF39", "policyId": "a9XS3AEGx3nCSsUd", "policyVersionId": "EYVbw9qVjFWsUVJg"}, {"isAccepted": false, "localizedPolicyVersionId": "8gOe7Bf9G0p98JAr", "policyId": "PIsEWRQt0wyKW6Xd", "policyVersionId": "w4nZEzSwzXfoy8f1"}, {"isAccepted": false, "localizedPolicyVersionId": "pY85Kpi26wLzaMeh", "policyId": "7nZ6ICXpb85i2eSC", "policyVersionId": "FcVu8T0qvlRxksrF"}], "authType": "EMAILPASSWD", "country": "gPeMw5Eovh0LMXyJ", "dateOfBirth": "VEFd9VoCoe5YarGR", "displayName": "f97ke0NwCTllezhi", "emailAddress": "HG6vI9zjqtCrpc3h", "password": "Bthe51s5BFokNXSf", "passwordMD5Sum": "dDbDIDzVwz96TM0w", "uniqueDisplayName": "mx4qwqtxK8BCOOAt", "username": "V9Iquo0EVBYEcUr0", "verified": true}'
"""

result, error = public_create_test_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
