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

Example: '{"autoAck": true, "language": "qgq", "orderId": "8PIhCM5ZZOE87ua6", "packageName": "6BFoVNkfaJhgZqW2", "productId": "0wqfqv67IuFt4kQS", "purchaseTime": 29, "purchaseToken": "MW0lYF8fUJxt9dYf", "region": "WlxxVYoC0RNPNolD"}'
"""

result, error = public_fulfill_google_iap_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
