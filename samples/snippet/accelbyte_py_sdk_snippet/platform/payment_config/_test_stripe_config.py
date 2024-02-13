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

Example: '{"allowedPaymentMethodTypes": ["iCiK69rtuh4X3Z9I", "nKenrALyr9mnXY2D", "NZohUqlkqO07HQwd"], "publishableKey": "nqcRxVTibtHdp6fW", "secretKey": "1WwFggoJGlneYUma", "webhookSecret": "4Ix0ztNOyKtECjMt"}'
"""

result, error = test_stripe_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
