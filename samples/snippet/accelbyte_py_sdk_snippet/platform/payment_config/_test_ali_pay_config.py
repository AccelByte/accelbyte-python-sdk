import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import test_ali_pay_config
from accelbyte_py_sdk.api.platform.models import AliPayConfig
from accelbyte_py_sdk.api.platform.models import TestResult

"""
body:
Definition: AliPayConfig
app_id: str
private_key: str
public_key: str
return_url: str

Example: '{"appId": "VS7pCWDxzs7wPF7v", "privateKey": "82L1jk7VAiQiVl3N", "publicKey": "Ayw1sGo1OQmzuONI", "returnUrl": "ViJHXfx2KpjfodHA"}'
"""

result, error = test_ali_pay_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
