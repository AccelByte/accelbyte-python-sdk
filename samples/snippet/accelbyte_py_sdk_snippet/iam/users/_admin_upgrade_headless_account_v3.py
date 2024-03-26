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

Example: '{"code": "0dSA6IQR85xmEBvi", "country": "XdWS1w5TltIeOU8I", "dateOfBirth": "pvbclE1vyIg0EwMf", "displayName": "cYOF8OLor71mtMfi", "emailAddress": "JWfLtF2juo01kP4a", "password": "DOKOYHtoTW2KUqX9", "uniqueDisplayName": "WBqaOgJgpX4wsuCH", "validateOnly": false}'
"""

result, error = admin_upgrade_headless_account_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
