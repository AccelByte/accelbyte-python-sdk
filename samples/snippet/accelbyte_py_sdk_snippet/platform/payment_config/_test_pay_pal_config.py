import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import test_pay_pal_config
from accelbyte_py_sdk.api.platform.models import PayPalConfig
from accelbyte_py_sdk.api.platform.models import TestResult

"""
body:
Definition: PayPalConfig
client_id: str
client_secret: str
return_url: str
web_hook_id: str

Example: '{"clientID": "OQjahl6JWuoykeLa", "clientSecret": "KRbReL51hOlGPlFI", "returnUrl": "fUId8nM7oSDlUou1", "webHookId": "UxARQosfF9gCI7nl"}'
"""

result, error = test_pay_pal_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
