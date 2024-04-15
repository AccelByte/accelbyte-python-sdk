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

Example: '{"code": "G4t9BfGHmdXpOnlw", "country": "3x6huCr6CYxIuhHb", "dateOfBirth": "mQ0pd5KlK4jrifox", "displayName": "f49eol3D3cyDEZ4l", "emailAddress": "hihlH5MxehKhYXEj", "password": "KLEjbSfGYLO1TiLN", "reachMinimumAge": true, "uniqueDisplayName": "BwX1k3V5F5Ak201o", "username": "IJeTwSGUGi8CXcjb", "validateOnly": false}'
"""

result, error = public_upgrade_headless_account_with_verification_code_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
