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

Example: '{"allowedPaymentMethodTypes": ["p2ciwoQwUFFP4Mzb", "pgKZ9pYM2C2kNsug", "lpym8lknjESsjOE3"], "publishableKey": "TUndFvGmLR2y0Zql", "secretKey": "PzBw6PaUo6sZrIzC", "webhookSecret": "PHtgIzuiQcGQZpIa"}'
"""

result, error = test_stripe_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
