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

Example: '{"Code": "JCu9DFD3VLrmBFY8", "Password": "1FubSxTqZ0HbmUB7", "loginId": "wrognDh3AXn4UqEB"}'
"""

result, error = upgrade_headless_account_with_verification_code(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
