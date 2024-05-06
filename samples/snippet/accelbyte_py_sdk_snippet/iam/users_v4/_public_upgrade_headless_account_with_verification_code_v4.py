import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import (
    public_upgrade_headless_account_with_verification_code_v4,
)
from accelbyte_py_sdk.api.iam.models import AccountUserResponseV4
from accelbyte_py_sdk.api.iam.models import (
    AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4,
)
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4
code: str
country: str
date_of_birth: str
display_name: str
email_address: str
password: str
reach_minimum_age: bool
unique_display_name: str
username: str
validate_only: bool

Example: '{"code": "Z1gNEGIjKxEm8Njx", "country": "FdbE7iD1gdE21ahh", "dateOfBirth": "1iQKihaLB1Ap1rAv", "displayName": "NcafyKNYyhcrAVgB", "emailAddress": "5WeK3TyoAl5fw8Gp", "password": "BtnYd7pjbmnOXx0R", "reachMinimumAge": true, "uniqueDisplayName": "rhOz6Iz8AygsBjgY", "username": "QHUtjue5QEge6Pj4", "validateOnly": true}'
"""

result, error = public_upgrade_headless_account_with_verification_code_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
