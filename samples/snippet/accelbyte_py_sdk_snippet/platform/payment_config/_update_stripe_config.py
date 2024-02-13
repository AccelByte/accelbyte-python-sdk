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

Example: '{"allowedPaymentMethodTypes": ["MYjbh3BKCJuXXst9", "FLlEvGcbfjrUWmdV", "GkDKMN3ohBZ9QSu3"], "publishableKey": "OzG3pQuTp4AEcIev", "secretKey": "cUy1d4ncuoKhEQiz", "webhookSecret": "JE1IkNWwQA9xUsBp"}'
"""

result, error = update_stripe_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
