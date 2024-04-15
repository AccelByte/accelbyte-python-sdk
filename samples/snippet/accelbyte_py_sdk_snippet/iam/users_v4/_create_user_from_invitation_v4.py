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

Example: '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "jUrPP8pzeoEHPd8K", "policyId": "lZ382WEIT66NL8JR", "policyVersionId": "e8HT7kAlAb03Xi5G"}, {"isAccepted": false, "localizedPolicyVersionId": "o5vXKyrNgKN2CSxA", "policyId": "MMpYUzVHnDSNMuUX", "policyVersionId": "2pnKBrboaNeGAeNZ"}, {"isAccepted": false, "localizedPolicyVersionId": "t4PTs28Ehp2hId8n", "policyId": "fkO6e5LHK4vThQOP", "policyVersionId": "Xl3CkibynGdButuN"}], "authType": "EMAILPASSWD", "code": "boom6FGRIj9EAMLJ", "country": "5yHEnrRtP1cmI26o", "dateOfBirth": "5uAJ9JhsGGs8jdWh", "displayName": "Ry5dbiPMfcxYN1W0", "emailAddress": "VTQus7YDxKLYCUmP", "password": "yfSIq9w8vTo6ebA0", "passwordMD5Sum": "XiJ2tdZjkOF5MStG", "reachMinimumAge": false, "uniqueDisplayName": "QFnz1k40xdjAzkYq", "username": "xWLT0tXBiMr4WBLG"}'
"""

result, error = create_user_from_invitation_v4(
    body=body,
    invitation_id=invitation_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
