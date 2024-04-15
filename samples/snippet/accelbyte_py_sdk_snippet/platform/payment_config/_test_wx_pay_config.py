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

Example: '{"appId": "wSYLGZKajoghZN0r", "key": "dMFNcG9rjbjC9COk", "mchid": "xuhJIUC77dWRQufz", "returnUrl": "nbc3hDVQrcodyF54"}'
"""

result, error = test_wx_pay_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
