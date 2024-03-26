import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_payment_url
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PaymentUrl
from accelbyte_py_sdk.api.platform.models import PaymentUrlCreate

"""
body:
Definition: PaymentUrlCreate
payment_order_no: str
payment_provider: str
return_url: str
ui: str
zip_code: str

Example: '{"paymentOrderNo": "1aKMre5bvORcfWF1", "paymentProvider": "WALLET", "returnUrl": "LXdqzwrKMy1nBob1", "ui": "uQyQW7x9fEE5ZeGL", "zipCode": "HN2IT25FoqawFIZc"}'
"""

result, error = public_get_payment_url(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
