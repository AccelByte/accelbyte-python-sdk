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

Example: '{"code": "154giu9IXl6onEnS", "country": "r0on9p8e8VYIRjYP", "dateOfBirth": "j18HMIpDrSIrO0jy", "displayName": "SRSaqkJdRCq089x0", "emailAddress": "VtyKHzTRUTfDayWi", "password": "nMDK922Yvvfhah8j", "uniqueDisplayName": "s8C8vdX2FXbk9AzG", "validateOnly": false}'
"""

result, error = admin_upgrade_headless_account_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
