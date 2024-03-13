import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import mock_fulfill_iap_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import MockIAPReceipt

"""
body:
Definition: MockIAPReceipt
item_identity_type: str
language: str
product_id: str
region: str
transaction_id: str
type_: str

Example: '{"itemIdentityType": "ITEM_SKU", "language": "LIwz-CkSd_Th", "productId": "CmfkKNFOYeSrbkyy", "region": "YIMjNlMmS5cjvQWx", "transactionId": "jHs0FF3W8HDEF7cB", "type": "GOOGLE"}'
"""

result, error = mock_fulfill_iap_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
