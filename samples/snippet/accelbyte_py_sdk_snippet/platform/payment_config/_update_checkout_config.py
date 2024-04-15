import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_checkout_config
from accelbyte_py_sdk.api.platform.models import CheckoutConfig
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentMerchantConfigInfo

"""
body:
Definition: CheckoutConfig
public_key: str
secret_key: str

Example: '{"publicKey": "HI5FVp8KAetrhWPX", "secretKey": "gfWWvT3238SngPeU"}'
"""

result, error = update_checkout_config(
    id_=id_,
    body=body,
    sandbox=sandbox,
    validate=validate,
    x_additional_headers=x_additional_headers,
)
