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

Example: '{"allowedPaymentMethodTypes": ["zTxtBkldvzBBiYmm", "8lt6aaNPdhgfLWHy", "f18b8ttSVKGOI8Xd"], "publishableKey": "AOo4H4Lb3CN9Q5bt", "secretKey": "IqRw6U85WxrMkkst", "webhookSecret": "bYBXdQ8qB79JNMiq"}'
"""

result, error = update_stripe_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
