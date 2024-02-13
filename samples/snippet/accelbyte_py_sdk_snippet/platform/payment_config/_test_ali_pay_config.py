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

Example: '{"appId": "x3FbkqO7jwNjkD7n", "privateKey": "Vn5DtQL2mtCTKP39", "publicKey": "wPZsRzjQJn46Rb0u", "returnUrl": "TXorUndWuQYcakne"}'
"""

result, error = test_ali_pay_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
