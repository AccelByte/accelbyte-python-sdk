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

Example: '{"entitlementCollectionId": "3Qr0sivKxgCRX0v3", "entitlementOrigin": "Playstation", "metadata": {"717aJi6Excm6cSIG": {}, "1r5qZGlWYrEzTL9I": {}, "NauqMLOM1hlLjbic": {}}, "origin": "Nintendo", "rewards": [{"currency": {"currencyCode": "dqAEfewqGOe2rimD", "namespace": "4MZUG1UcX5CdW4v0"}, "item": {"itemId": "1OqSluBXedztKoGG", "itemSku": "ZgMhKquO2EMdtpL2", "itemType": "VjHwWTzQBw8xvMjZ"}, "quantity": 87, "type": "CURRENCY"}, {"currency": {"currencyCode": "KrwVr5JswhAjMjdK", "namespace": "0hUWmcS24WWjDbNi"}, "item": {"itemId": "jObrEzGSCDtLADy4", "itemSku": "u79OCZ2NI3Mf7CSB", "itemType": "2pNq1kZsOXXIhQOv"}, "quantity": 68, "type": "ITEM"}, {"currency": {"currencyCode": "cW95HFTuV4O1wESz", "namespace": "NIZ0D8dO4WNSVGEq"}, "item": {"itemId": "2272h4I9Facah4NZ", "itemSku": "RBxLae2WOsZV9ZeN", "itemType": "0SupUkgYmHxn3CWZ"}, "quantity": 43, "type": "ITEM"}], "source": "REFERRAL_BONUS", "transactionId": "1v0wR9SmWNJOC7zL"}'
"""

result, error = fulfill_rewards(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
