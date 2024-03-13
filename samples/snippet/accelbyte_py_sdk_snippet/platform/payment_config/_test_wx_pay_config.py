import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import test_wx_pay_config
from accelbyte_py_sdk.api.platform.models import TestResult
from accelbyte_py_sdk.api.platform.models import WxPayConfigRequest

"""
body:
Definition: WxPayConfigRequest
app_id: str
key: str
mchid: str
return_url: str

Example: '{"appId": "jpbL6dUSzQZydnwd", "key": "QDDHfih3q1Wmauso", "mchid": "h8FAORdn93ysCgbq", "returnUrl": "IyaPUYjqO8a7I3jv"}'
"""

result, error = test_wx_pay_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
