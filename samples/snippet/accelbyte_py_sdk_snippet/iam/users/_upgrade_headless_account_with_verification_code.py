import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import upgrade_headless_account_with_verification_code
from accelbyte_py_sdk.api.iam.models import (
    ModelUpgradeHeadlessAccountWithVerificationCodeRequest,
)
from accelbyte_py_sdk.api.iam.models import ModelUserResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpgradeHeadlessAccountWithVerificationCodeRequest
code: str
password: str
login_id: str

Example: '{"Code": "4crN8AryVk5Nht9W", "Password": "jvZnYSybrh1y1i7v", "loginId": "c53kxtchQrF1LhIT"}'
"""

result, error = upgrade_headless_account_with_verification_code(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
