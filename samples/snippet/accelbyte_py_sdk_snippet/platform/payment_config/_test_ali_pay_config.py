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

Example: '{"appId": "q7OjUwLMn0NLAzru", "privateKey": "lyk1inDk63B9ub2M", "publicKey": "Gk9ZkJpiS5ce42BS", "returnUrl": "31RevCmSMaxArfvE"}'
"""

result, error = test_ali_pay_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
