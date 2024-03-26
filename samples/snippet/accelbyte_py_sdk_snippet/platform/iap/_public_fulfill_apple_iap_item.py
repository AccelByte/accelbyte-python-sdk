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

Example: '{"excludeOldTransactions": false, "language": "IWsP", "productId": "WTOMSQZd3OtkhCG3", "receiptData": "YMHf5TyXwgzl2hJb", "region": "yqYwboeB6XsHxEBh", "transactionId": "s5nb9mBvPevKk2hy"}'
"""

result, error = public_fulfill_apple_iap_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
