import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_stripe_config
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo
from accelbyte_py_sdk.api.platform.models import StripeConfig

"""
body:
Definition: StripeConfig
allowed_payment_method_types: List[str]
publishable_key: str
secret_key: str
webhook_secret: str

Example: '{"allowedPaymentMethodTypes": ["ToAGG8gC6X1EqYX1", "2awqkEJnpqEUgrMg", "kGemjaaqQX8KQyJ0"], "publishableKey": "Z7HAgPA8hBireCPk", "secretKey": "nJHHm0IzLEksqiNK", "webhookSecret": "asWQnFeNsJ6TxI4S"}'
"""

result, error = update_stripe_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
