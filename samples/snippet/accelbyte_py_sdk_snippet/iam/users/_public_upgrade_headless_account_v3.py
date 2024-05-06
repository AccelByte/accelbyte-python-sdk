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

Example: '{"code": "zaIWJpEfkKNmexVh", "country": "SCKLHo5fG2f9sH4K", "dateOfBirth": "IUIzVEykDKTfEBfC", "displayName": "fn0UHApDKnltfDVj", "emailAddress": "g6Y8Afc0FyxVwl1g", "password": "K9OkmWQSiCrKfnKL", "uniqueDisplayName": "kwNdXnLipor9FFbY", "validateOnly": true}'
"""

result, error = public_upgrade_headless_account_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
