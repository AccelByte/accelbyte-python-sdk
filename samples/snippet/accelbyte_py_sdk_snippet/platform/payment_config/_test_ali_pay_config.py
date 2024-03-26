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

Example: '{"appId": "8Vsw7JdGhda7eaCJ", "privateKey": "AIbkAOItX5uqH9d0", "publicKey": "GeG4PlDqOonQt52I", "returnUrl": "vFzmJD4akZgPvFiw"}'
"""

result, error = test_ali_pay_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
