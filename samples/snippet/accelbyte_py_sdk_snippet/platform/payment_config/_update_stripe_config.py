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

Example: '{"allowedPaymentMethodTypes": ["56sSzV860U5auPVx", "vLjZCB6rK8ABejs9", "4dfOzSrhMpHe4J4r"], "publishableKey": "SZcgrNpSOI3pDWzb", "secretKey": "cciXmBF3O9wyk6nP", "webhookSecret": "Fk2oBRMiK8lv83Ie"}'
"""

result, error = update_stripe_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
