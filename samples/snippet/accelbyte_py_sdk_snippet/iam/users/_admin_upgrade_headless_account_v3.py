import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_upgrade_headless_account_v3
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

Example: '{"code": "3aKUrxK0MbFdZW9h", "country": "2H0mo91H7Dfx0s80", "dateOfBirth": "w9x7pArZrvaPR9vd", "displayName": "yCCO9RP7r7iQJSGx", "emailAddress": "kp3QeaIaZaojyzZd", "password": "SdUCCNV1UVaPbzRu", "uniqueDisplayName": "ATXZtCAaiidXtrKQ", "validateOnly": false}'
"""

result, error = admin_upgrade_headless_account_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
