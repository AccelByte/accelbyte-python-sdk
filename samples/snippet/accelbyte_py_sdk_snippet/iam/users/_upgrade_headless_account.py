import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import upgrade_headless_account
from accelbyte_py_sdk.api.iam.models import ModelUpgradeHeadlessAccountRequest
from accelbyte_py_sdk.api.iam.models import ModelUserResponse
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelUpgradeHeadlessAccountRequest
login_id: str
password: str

Example: '{"LoginID": "Ts3YVdMi0w6ehLQQ", "Password": "I6pk8CjjCKxGwemD"}'
"""

result, error = upgrade_headless_account(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
