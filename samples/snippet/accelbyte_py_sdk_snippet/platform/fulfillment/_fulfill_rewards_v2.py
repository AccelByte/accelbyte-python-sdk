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

Example: '{"entitlementCollectionId": "GUOnX530Eg2ufunm", "entitlementOrigin": "Xbox", "metadata": {"Oy0RsgbQOsjGIBDV": {}, "wATD5WUs1CjjFtKu": {}, "X2uX0pK250XjJavb": {}}, "origin": "Other", "rewards": [{"currency": {"currencyCode": "Zv8VYAgEoPOWEgSy", "namespace": "vr9oTylFwJ38GBA5"}, "item": {"itemId": "WOPU62KZR7bjA4hL", "itemSku": "CfLZlKh21gzrISzE", "itemType": "PYIdDcV44EK7S3VK"}, "quantity": 76, "type": "ITEM"}, {"currency": {"currencyCode": "IqpbpMR4u07L4TZY", "namespace": "OKOcVI003RdJ1nM3"}, "item": {"itemId": "EV1pFXfBDMYDTlIV", "itemSku": "lXzf9t5Z3SnD3jxi", "itemType": "g1bgpRRdXT6yDvMR"}, "quantity": 86, "type": "ITEM"}, {"currency": {"currencyCode": "xxxwUkQqisrro4aU", "namespace": "zr7KY4vrsAljiTww"}, "item": {"itemId": "pmROsXIK1e1OdNZB", "itemSku": "9zqtQHYv6Bt2qzLI", "itemType": "yjSNvuX04Rkb45CW"}, "quantity": 96, "type": "CURRENCY"}], "source": "PURCHASE", "transactionId": "FYWeuhc9zABJk4h6"}'
"""

result, error = fulfill_rewards_v2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
