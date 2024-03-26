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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "m1KVfP6Rblx1w01F", "policyId": "QCyvkWEJaWSbu9Cq", "policyVersionId": "ATKfT5As3iSGvhfR"}, {"isAccepted": true, "localizedPolicyVersionId": "TXBnb72RQXtgxiVy", "policyId": "TC3ACwgzqMxk6M2i", "policyVersionId": "UlUv1eZneAS81RJc"}, {"isAccepted": true, "localizedPolicyVersionId": "Kd6TmTdhkMMeESy9", "policyId": "VCq9FEHr2KpEYHIv", "policyVersionId": "kEBAzXb5iJE76hzv"}], "authType": "EMAILPASSWD", "code": "KRd3zYHmNjYLlvXu", "country": "7lFAgNXkswwirVLn", "dateOfBirth": "3JwlExBPUUwllMOG", "displayName": "7Lx4Uhs9hHn1tHaB", "emailAddress": "FHygXfb2ClOkLHzt", "password": "sCDNodLF4CqY2r7i", "passwordMD5Sum": "oX8abbS4sgFA9DEd", "reachMinimumAge": false, "uniqueDisplayName": "jsWWBvCWpkHLugTx", "username": "dDKlrh8rHDksglSe"}'
"""

result, error = create_user_from_invitation_v4(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
