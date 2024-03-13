import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import test_xsolla_config
from accelbyte_py_sdk.api.platform.models import TestResult
from accelbyte_py_sdk.api.platform.models import XsollaConfig

"""
body:
Definition: XsollaConfig
api_key: str
flow_completion_url: str
merchant_id: int
project_id: int
project_secret_key: str

Example: '{"apiKey": "F75kvYhMK98BL3Oy", "flowCompletionUrl": "yTv5JEWHiBncMxSx", "merchantId": 27, "projectId": 6, "projectSecretKey": "4DKejAEXjCCbDowG"}'
"""

result, error = test_xsolla_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
