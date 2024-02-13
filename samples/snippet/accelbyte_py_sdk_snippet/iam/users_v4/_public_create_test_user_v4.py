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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zOheWE99aDW5whUj", "policyId": "pNsB9g99SsvnL7dd", "policyVersionId": "yAFtObboTitMrUEZ"}, {"isAccepted": false, "localizedPolicyVersionId": "FKmtKyHka1RXmS5O", "policyId": "uYeOtFq4FJ8zM2P9", "policyVersionId": "qEmNPuCMCX6px44W"}, {"isAccepted": true, "localizedPolicyVersionId": "KrizfBVXcFNlxHQ1", "policyId": "PC7MtTCDwzA4w6UR", "policyVersionId": "4JMRvLM5YEtWcMsi"}], "authType": "EMAILPASSWD", "country": "VHhfb9WYIOx9xjFk", "dateOfBirth": "iCR1wqC40kImjwv7", "displayName": "Atj7nPbCnYclwKlI", "emailAddress": "REyYWzk5HsbOw7yq", "password": "vdIUHRn2dntE6yY5", "passwordMD5Sum": "fG0SFPVafcKdDadk", "uniqueDisplayName": "Mp06I7sstBDD6MLw", "username": "FpcHnaFUxjSZw8LC", "verified": false}'
"""

result, error = public_create_test_user_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
