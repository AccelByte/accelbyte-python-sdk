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

Example: '{"code": "LY9OL1Kd89fr0t0n", "country": "VBXWSczKOJ3cYP46", "dateOfBirth": "FZk0O5DP93fHV19X", "displayName": "yLApi9WtuCPbR62V", "emailAddress": "sxytNFz1KU81v9mR", "password": "F6pZJZ8OR67YxKLt", "uniqueDisplayName": "5JBrl9BH0IKMnsJH", "validateOnly": true}'
"""

result, error = admin_upgrade_headless_account_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
