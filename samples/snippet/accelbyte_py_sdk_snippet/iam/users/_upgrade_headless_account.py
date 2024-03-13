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

Example: '{"LoginID": "1LZuUF8kj24aVWZa", "Password": "OouFTgVl3HcFJD6Q"}'
"""

result, error = upgrade_headless_account(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
