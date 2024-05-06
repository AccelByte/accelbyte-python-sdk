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

Example: '{"entitlementCollectionId": "jAvMQxdlqHJhulmf", "entitlementOrigin": "Xbox", "metadata": {"ytL0HhbynX1bKUmo": {}, "stpq6L525BBGPAYN": {}, "0XPG7dwuZEogPEmp": {}}, "origin": "Steam", "rewards": [{"currency": {"currencyCode": "QbsgcX2rPb153DzG", "namespace": "AFlNNtC2hpURWApc"}, "item": {"itemId": "OOUGNfygLglvchO7", "itemSku": "mR39ouwjsiQf8Iw0", "itemType": "AIMqqlt8kCpAPfCx"}, "quantity": 54, "type": "CURRENCY"}, {"currency": {"currencyCode": "WPrG7uVKLleC68Pt", "namespace": "5m4lEoZGMWJSoF9w"}, "item": {"itemId": "1cNQ1q60dHf4krCj", "itemSku": "kAJU0adntTYgRiY9", "itemType": "3pYftS6AvGFX5isJ"}, "quantity": 64, "type": "CURRENCY"}, {"currency": {"currencyCode": "3eGATJ8Qgv8asrlW", "namespace": "iuQnyEN1FhlNPMDb"}, "item": {"itemId": "N9MaGLCwYaHXmQhX", "itemSku": "NFbosnOV8VmfsuAu", "itemType": "4p9FCrwZuG50Pnym"}, "quantity": 60, "type": "ITEM"}], "source": "PAYMENT", "transactionId": "Tri0ostUeQVhdmXF"}'
"""

result, error = fulfill_rewards(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
