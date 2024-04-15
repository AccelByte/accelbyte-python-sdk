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

Example: '{"apiKey": "3R2pban5P6yBv2NZ", "flowCompletionUrl": "ZuEsT18mDhcoW6gB", "merchantId": 24, "projectId": 90, "projectSecretKey": "3UHocHomhZFJ6neG"}'
"""

result, error = test_xsolla_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
