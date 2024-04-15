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

Example: '{"code": "RS96VSjsjlTVpwPn", "country": "sjCwv58m9RIDCFTu", "dateOfBirth": "PfsevKcXJsUmUpXg", "displayName": "XfYJs6oy3mK5ky3S", "emailAddress": "FjaxnkiDioXuTy0F", "password": "6EdN0QTgxTc0JKTB", "uniqueDisplayName": "GO8gg41OkHE73ntw", "validateOnly": true}'
"""

result, error = admin_upgrade_headless_account_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
