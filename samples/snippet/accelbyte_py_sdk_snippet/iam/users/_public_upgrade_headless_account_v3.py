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

Example: '{"code": "TPrgpPp4yAs1M6uL", "country": "SAsBvsqt5Pho5eFG", "dateOfBirth": "IaRfJTle5JQinsMB", "displayName": "7VzW2zUVqk6kaxeX", "emailAddress": "Xrpin5rPRgJ7YAHK", "password": "tK05OQuFkVcCNd1T", "uniqueDisplayName": "zNVcBjTN6N9TZwCG", "validateOnly": true}'
"""

result, error = public_upgrade_headless_account_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
