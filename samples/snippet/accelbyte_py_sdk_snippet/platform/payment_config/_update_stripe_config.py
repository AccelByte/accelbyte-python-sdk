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

Example: '{"allowedPaymentMethodTypes": ["6qVFlun7PpgIXiin", "PZ45eDgpmsbdORhA", "fmNfA1axnZ38snOp"], "publishableKey": "s3swI4LOefajMb27", "secretKey": "5KI3OTMkjyc3GqAM", "webhookSecret": "MxZkyLPbByPGbakP"}'
"""

result, error = update_stripe_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
