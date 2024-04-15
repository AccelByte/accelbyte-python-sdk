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

Example: '{"itemIdentityType": "ITEM_ID", "language": "apUp_sz", "productId": "M2e381iBtXVK7wgp", "region": "85NJVI1HN5iA8O4X", "transactionId": "69MRuLY1ErnLu2Sn", "type": "STEAM"}'
"""

result, error = mock_fulfill_iap_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
