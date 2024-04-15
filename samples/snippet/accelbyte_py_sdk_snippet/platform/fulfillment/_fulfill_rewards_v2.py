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

Example: '{"entitlementCollectionId": "4nDXKWJF4TnFXZTY", "entitlementOrigin": "Nintendo", "metadata": {"OkjUVoFDLmRsNoRF": {}, "1rXVTywwyF1muj5X": {}, "ZGwpbYBTz3uzDx65": {}}, "origin": "Playstation", "rewards": [{"currency": {"currencyCode": "vlxFhV3GChUCDmxz", "namespace": "GtTRBnAiSfPDdmpF"}, "item": {"itemId": "wF561dZ0kKEeerYo", "itemSku": "PWqOBIeITyAjCV3d", "itemType": "c4MdgEjDkxa4AfNr"}, "quantity": 44, "type": "ITEM"}, {"currency": {"currencyCode": "vV9Z6KJJ787n2szH", "namespace": "misgdaQg0Xdg5Ljm"}, "item": {"itemId": "q3PvwtrXpk0wSm48", "itemSku": "GHigE3M8C205jMhr", "itemType": "HF19s9nyxaTba6Ug"}, "quantity": 15, "type": "CURRENCY"}, {"currency": {"currencyCode": "LvQnMziaVVfMjrTD", "namespace": "nQK5FZtUTnrxcQfw"}, "item": {"itemId": "fZ6B4jrYW6bO387b", "itemSku": "4PCGtqNLtEdnN1Jn", "itemType": "OsZEtc95ZvNhwjQW"}, "quantity": 18, "type": "ITEM"}], "source": "GIFT", "transactionId": "dc08Yc0ZX156aNyE"}'
"""

result, error = fulfill_rewards_v2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
