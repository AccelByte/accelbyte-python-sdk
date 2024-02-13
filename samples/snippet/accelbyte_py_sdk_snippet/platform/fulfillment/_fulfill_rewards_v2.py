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

Example: '{"entitlementCollectionId": "8g1H2jDbvhigQmKE", "entitlementOrigin": "Other", "metadata": {"SEFRLhW7ux3dOweV": {}, "smH1K4srcWvLetpy": {}, "feDnUh7O6yEs0kPK": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "OvHP9YJPwq4XDGwT", "namespace": "72tCjjQ7hmskzovs"}, "item": {"itemId": "L8EA4m5OZZR1UXEP", "itemSku": "bPQSrQlsgnu75VSl", "itemType": "nFCiWsdKc2zLoCHR"}, "quantity": 17, "type": "CURRENCY"}, {"currency": {"currencyCode": "Gil8b0ZE6KFPOrCY", "namespace": "NSS2XTRqKXzcOhms"}, "item": {"itemId": "YfLzHIdc9siqMj6Q", "itemSku": "3lFGWYkP3YDofi3l", "itemType": "S6THAaBMxbdzpPl2"}, "quantity": 26, "type": "CURRENCY"}, {"currency": {"currencyCode": "ph2BNkdTw6XHNURq", "namespace": "sEeARTd2s2E9GCU7"}, "item": {"itemId": "FYlUOzomkioliD6O", "itemSku": "wZXn9JniBMeTlTHG", "itemType": "JuRhKD7mhDbV4SF6"}, "quantity": 93, "type": "ITEM"}], "source": "REFERRAL_BONUS", "transactionId": "l3klVzKBHDKxLw4o"}'
"""

result, error = fulfill_rewards_v2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
