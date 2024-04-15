import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_upgrade_headless_account_v3
from accelbyte_py_sdk.api.iam.models import (
    ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3,
)
from accelbyte_py_sdk.api.iam.models import ModelUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpgradeHeadlessAccountWithVerificationCodeRequestV3
code: str
country: str
date_of_birth: str
display_name: str
email_address: str
password: str
unique_display_name: str
validate_only: bool

Example: '{"code": "6uLMLwn61cyzbvBN", "country": "s7AZugcR59YkndOm", "dateOfBirth": "stuhW67Zg0Wt12AT", "displayName": "TRWmzc6B55mUEhqB", "emailAddress": "G1r8TsyqH1Omy1nJ", "password": "nt6RPB4wOCPbfQsb", "uniqueDisplayName": "RHDJfOtDS5B4QflB", "validateOnly": true}'
"""

result, error = public_upgrade_headless_account_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
