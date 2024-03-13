import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import fulfill_rewards_v2
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillmentResult
from accelbyte_py_sdk.api.platform.models import RewardsRequest

"""
body:
Definition: RewardsRequest
entitlement_collection_id: str
entitlement_origin: str
metadata: Dict[str, Any]
origin: str
rewards: List[PlatformReward]
Definition: List[PlatformReward]
    currency: PlatformRewardCurrency
    Definition: PlatformRewardCurrency
        currency_code: str
        namespace: str
    item: PlatformRewardItem
    Definition: PlatformRewardItem
        item_id: str
        item_sku: str
        item_type: str
    quantity: int
    type_: str
source: str
transaction_id: str

Example: '{"entitlementCollectionId": "87fGDlLb2EfNab44", "entitlementOrigin": "GooglePlay", "metadata": {"HXvKG9H8I8ppFbHP": {}, "Q37PmKy8fpfihM1L": {}, "VUAS9W0TqOVem0wz": {}}, "origin": "GooglePlay", "rewards": [{"currency": {"currencyCode": "Uj6UNQljeZoGdVI9", "namespace": "K7FiDFnGQ1L9zu8U"}, "item": {"itemId": "8TisyWZLN4TSnrpc", "itemSku": "xbtqrUnDwx6upGEr", "itemType": "1sw8ptLyvuz0qZMU"}, "quantity": 72, "type": "ITEM"}, {"currency": {"currencyCode": "0PQsZeifJGvcy4Z3", "namespace": "CL53L8swuOwUIal9"}, "item": {"itemId": "W9uiw4Qy2XQEKND7", "itemSku": "d9tc5tBJqQfnyxp3", "itemType": "falsAZ5fhm9LCjbF"}, "quantity": 1, "type": "ITEM"}, {"currency": {"currencyCode": "9lKJUXzFU301VNbe", "namespace": "Reyisw7dGdLFbcZ5"}, "item": {"itemId": "zsbcNB9QsOlWDp6w", "itemSku": "RW6ZUzqgPYrnXcFu", "itemType": "RtslNYwZGBCEiJDB"}, "quantity": 15, "type": "CURRENCY"}], "source": "GIFT", "transactionId": "rXXdSmwiqHQK9EjE"}'
"""

result, error = fulfill_rewards_v2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
