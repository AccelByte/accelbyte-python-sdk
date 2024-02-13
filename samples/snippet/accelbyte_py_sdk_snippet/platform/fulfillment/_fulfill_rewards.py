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

Example: '{"entitlementCollectionId": "2RWVbf8uQ6Je4vNw", "entitlementOrigin": "Playstation", "metadata": {"jC7vcxaYjdcoOcED": {}, "WS8wPpvyyCFSnslp": {}, "83FOArwcYiM6TYNw": {}}, "origin": "System", "rewards": [{"currency": {"currencyCode": "njntc5cZgfDSWWQ8", "namespace": "f6hLRka8OrXQ49Qv"}, "item": {"itemId": "B0IG1wG9LWZBdyOQ", "itemSku": "Stj6Ak0NlPKLBuBv", "itemType": "WLwcvrwzxYXrXIn9"}, "quantity": 73, "type": "ITEM"}, {"currency": {"currencyCode": "7hWLAZ8KV7Idlf5U", "namespace": "H3xGNtCnkyU7zQ3C"}, "item": {"itemId": "YCzoB93CeR0ExK63", "itemSku": "f56gYV9g9H9HTpKJ", "itemType": "AwGcnPiRC2hE1fNU"}, "quantity": 94, "type": "ITEM"}, {"currency": {"currencyCode": "uBG8k9Hykj79Y9be", "namespace": "SWIA0YfJwj64xQSO"}, "item": {"itemId": "oCXvEAAWvpGyRh0c", "itemSku": "rrsJxTWYeFOG80Hx", "itemType": "kBLRaufCeyhsP2v1"}, "quantity": 38, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "mOjzo0M0Mg43VEEX"}'
"""

result, error = fulfill_rewards(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
