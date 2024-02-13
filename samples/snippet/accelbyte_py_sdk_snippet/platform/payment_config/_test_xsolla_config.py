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

Example: '{"apiKey": "zIrL9IkU3yWh2Gt4", "flowCompletionUrl": "oetzxiaSIjMuXwtl", "merchantId": 30, "projectId": 49, "projectSecretKey": "KG1UplAline0env7"}'
"""

result, error = test_xsolla_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
