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

Example: '{"allowedPaymentMethodTypes": ["Kle6nGz0cGPmrm0k", "g0KIC36LXBxS1vgn", "3Qiy4WWQ6iSXVYf7"], "publishableKey": "j12soYGZMu7l7ZnF", "secretKey": "segWzY5yDJ8TIXSI", "webhookSecret": "b991lEbKiokskPT9"}'
"""

result, error = update_stripe_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
