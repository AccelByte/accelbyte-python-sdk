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

Example: '{"entitlementCollectionId": "r36KAxDxJ2MhnK5e", "entitlementOrigin": "Epic", "metadata": {"TaC33zxEf9pjUVmD": {}, "2p9UH0QtHimjmdDI": {}, "DIQaZDBCT2ydMtGV": {}}, "origin": "Twitch", "rewards": [{"currency": {"currencyCode": "hYMqzV8LObVT5cdQ", "namespace": "bLwHhsYHpbnbFvaR"}, "item": {"itemId": "g2lixzSgOiRYgmw6", "itemSku": "V846BzVpgOuPDzuE", "itemType": "ig44UK7z22ExgtGV"}, "quantity": 25, "type": "CURRENCY"}, {"currency": {"currencyCode": "rYi02zgSo31Ft5ne", "namespace": "hN21UATK60alp6mT"}, "item": {"itemId": "FrqttWccXt5phfdO", "itemSku": "okHH1WdhQ69s3evD", "itemType": "kflRjJnAqrivd6xt"}, "quantity": 27, "type": "CURRENCY"}, {"currency": {"currencyCode": "TtnzdRMT6oL70rbv", "namespace": "Oa1lopUwAjljK1fV"}, "item": {"itemId": "5w0OvrOkEMxw91te", "itemSku": "I2908AeAb1cXUe8g", "itemType": "ZWdKRUw5ggx3jJeG"}, "quantity": 27, "type": "ITEM"}], "source": "CONSUME_ENTITLEMENT", "transactionId": "NIJrwSLIzBdI8Nbi"}'
"""

result, error = fulfill_rewards_v2(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
