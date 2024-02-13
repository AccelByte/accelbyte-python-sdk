import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import test_checkout_config
from accelbyte_py_sdk.api.platform.models import CheckoutConfig
from accelbyte_py_sdk.api.platform.models import TestResult

"""
body:
Definition: CheckoutConfig
public_key: str
secret_key: str

Example: '{"publicKey": "G9c1leTFgDzc6Y0b", "secretKey": "82NHRjtii2ls9duw"}'
"""

result, error = test_checkout_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
