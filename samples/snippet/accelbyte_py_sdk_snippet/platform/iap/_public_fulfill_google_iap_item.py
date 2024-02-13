import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_fulfill_google_iap_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import GoogleIAPReceipt
from accelbyte_py_sdk.api.platform.models import GoogleReceiptResolveResult

"""
body:
Definition: GoogleIAPReceipt
auto_ack: bool
language: str
order_id: str
package_name: str
product_id: str
purchase_time: int
purchase_token: str
region: str

Example: '{"autoAck": true, "language": "vZTb_euhw", "orderId": "ugFjAwUNfVTAeTKu", "packageName": "D1f0yJYxWeoPOKnO", "productId": "Jk6uWVVQ3ppb9xpQ", "purchaseTime": 15, "purchaseToken": "PB6Y29Qk8UObfbhs", "region": "EaWNJR0jKTGrde5t"}'
"""

result, error = public_fulfill_google_iap_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
