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

Example: '{"code": "IBa0UWKQyoCZKe4Z", "country": "0d0dKDhyZpY1lOaT", "dateOfBirth": "qsrIfYsAOKYrf9LX", "displayName": "Q7vdRn5ptQguUEQR", "emailAddress": "MND1EyqS4x8mRlyJ", "password": "sRBC7qYNBPCuiskO", "reachMinimumAge": true, "uniqueDisplayName": "CTypHXPSTYPDJOr1", "username": "8xfTy8aZgudxX5Mw", "validateOnly": false}'
"""

result, error = public_upgrade_headless_account_with_verification_code_v4(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
