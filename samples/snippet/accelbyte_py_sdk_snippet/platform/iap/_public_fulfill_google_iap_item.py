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

Example: '{"autoAck": false, "language": "LjQ_VKrB-864", "orderId": "PmQNgymxcOqka1wp", "packageName": "PQauMOy538PCo0sS", "productId": "0Hp4z43roLNibVdZ", "purchaseTime": 35, "purchaseToken": "ndfe31Tb3ey6gEOV", "region": "PNylru1O9M5INfPX"}'
"""

result, error = public_fulfill_google_iap_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
