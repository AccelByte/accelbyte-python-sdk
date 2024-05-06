import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_fulfill_apple_iap_item
from accelbyte_py_sdk.api.platform.models import AppleIAPReceipt
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: AppleIAPReceipt
exclude_old_transactions: bool
language: str
product_id: str
receipt_data: str
region: str
transaction_id: str

Example: '{"excludeOldTransactions": true, "language": "WRW-BY", "productId": "urccEn8muJz42sNX", "receiptData": "sJ3GvVfmGbZTWozc", "region": "gM81eQJ8osckTQhA", "transactionId": "Po1r2P9ItNC2sLkF"}'
"""

result, error = public_fulfill_apple_iap_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
