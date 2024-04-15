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

Example: '{"allowedPaymentMethodTypes": ["NX7PmjzecHQ0GfH6", "KmnYmtY82m5QKwlr", "AgBs3nzTklCEFqJb"], "publishableKey": "Qa6Kiq06haUiJenD", "secretKey": "eHOd0Obj8M47HkRM", "webhookSecret": "rsCDLrNOKLKDDYKf"}'
"""

result, error = test_stripe_config(
    body=body,
    sandbox=sandbox,
    x_additional_headers=x_additional_headers,
)
