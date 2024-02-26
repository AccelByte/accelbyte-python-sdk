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

Example: '{"allowedPaymentMethodTypes": ["vKVS82AMyvMU03Fm", "GTgmS0IwGQqtRR4R", "ODSVVVjxHukGfNAW"], "publishableKey": "EUpyLOofdAvY4CE2", "secretKey": "x41qnxPQZYF69ztW", "webhookSecret": "1T90Nw2Sn1w0IsB1"}'
"""

result, error = test_stripe_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
