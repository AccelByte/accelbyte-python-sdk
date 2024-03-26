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

Example: '{"autoAck": true, "language": "hR_uDZo-qo", "orderId": "IXfs6Rpo2H2qvRSk", "packageName": "wK4zGpi9hnn1kZsG", "productId": "dfliOueamP9TqjAH", "purchaseTime": 71, "purchaseToken": "JEYesNyACD05Azhv", "region": "H3IABUw2VY6LR8z9"}'
"""

result, error = public_fulfill_google_iap_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
