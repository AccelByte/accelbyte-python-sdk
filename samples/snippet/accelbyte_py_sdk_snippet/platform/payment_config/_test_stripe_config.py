import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import test_stripe_config
from accelbyte_py_sdk.api.platform.models import StripeConfig
from accelbyte_py_sdk.api.platform.models import TestResult

"""
body:
Definition: StripeConfig
allowed_payment_method_types: List[str]
publishable_key: str
secret_key: str
webhook_secret: str

Example: '{"allowedPaymentMethodTypes": ["hGmXX2WRcFnVpVzp", "S2mMip2WadKmXyEL", "PqHUtuOA1AqJWRQV"], "publishableKey": "WrWnLiiG6NPSV2kq", "secretKey": "NcNNGO0AgP7jkDOh", "webhookSecret": "1Ozda0PWqCTC6oRk"}'
"""

result, error = test_stripe_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
