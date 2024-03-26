import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import fulfill_rewards
from accelbyte_py_sdk.api.platform.models import ErrorEntity
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

Example: '{"entitlementCollectionId": "rmzi00JxTh8Nw9Qd", "entitlementOrigin": "Other", "metadata": {"NyG6T871tIwtZd4G": {}, "zQJnX6ReZ7UDZmQ9": {}, "jxm0QPdaaFAKOOot": {}}, "origin": "Epic", "rewards": [{"currency": {"currencyCode": "ryNNWFe4AvNIMOSh", "namespace": "s257lU4MkSrA8xv3"}, "item": {"itemId": "TWS0iX54XW2PoMdC", "itemSku": "OiJAPjvfzZrps8qP", "itemType": "kL0qG1iBc002PTlo"}, "quantity": 3, "type": "ITEM"}, {"currency": {"currencyCode": "9iNksxDjSvmP6WjM", "namespace": "9xEWnksigiV0KxQx"}, "item": {"itemId": "oW24vMRHTwxtoqIm", "itemSku": "8Oltl8tDtX6L9a8a", "itemType": "qlmdMsWWA3Q9TQat"}, "quantity": 58, "type": "CURRENCY"}, {"currency": {"currencyCode": "3pmmYtZSGDHyP6X4", "namespace": "99mQKMDen5BeAxxk"}, "item": {"itemId": "cHzILO6RWljVnpWh", "itemSku": "aqwqNq8sgh2iJSfE", "itemType": "WAKe6jjS8ftltqoY"}, "quantity": 23, "type": "CURRENCY"}], "source": "ORDER_REVOCATION", "transactionId": "LLXFZO1V5bWViz5S"}'
"""

result, error = fulfill_rewards(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
