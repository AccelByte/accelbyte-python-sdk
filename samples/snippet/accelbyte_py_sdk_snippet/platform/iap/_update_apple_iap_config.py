import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_apple_iap_config
from accelbyte_py_sdk.api.platform.models import AppleIAPConfigInfo
from accelbyte_py_sdk.api.platform.models import AppleIAPConfigRequest

"""
body:
Definition: AppleIAPConfigRequest
bundle_id: str
password: str

Example: '{"bundleId": "ZDareQcf4AvAefPj", "password": "XO3vbkeHnCYpQnmo"}'
"""

result, error = update_apple_iap_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
