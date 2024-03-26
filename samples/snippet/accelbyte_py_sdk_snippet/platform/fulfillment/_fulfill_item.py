import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import fulfill_item
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FulfillmentRequest
from accelbyte_py_sdk.api.platform.models import FulfillmentResult

"""
body:
Definition: FulfillmentRequest
duration: int
end_date: str
entitlement_collection_id: str
entitlement_origin: str
item_id: str
item_sku: str
language: str
metadata: Dict[str, Any]
order: OrderSummary
Definition: OrderSummary
    currency: CurrencySummary
    Definition: CurrencySummary
        currency_code: str
        currency_symbol: str
        currency_type: str
        decimals: int
        namespace: str
    ext: Dict[str, Any]
    free: bool
order_no: str
origin: str
override_bundle_item_qty: Dict[str, int]
quantity: int
region: str
source: str
start_date: str
store_id: str

Example: '{"duration": 83, "endDate": "1991-02-11T00:00:00Z", "entitlementCollectionId": "3xY0YgYIBxJ4xVdo", "entitlementOrigin": "Twitch", "itemId": "QGBJKYgkrHpaA2Wr", "itemSku": "wEqRaQh6i2t4ZtRD", "language": "s1SRTIrgc9kO6fcv", "metadata": {"usEKDV7EvaeUXKbz": {}, "Jf76YhE2hRz6zg3Q": {}, "JSFApZC02srgOok0": {}}, "order": {"currency": {"currencyCode": "fZBTVKP6XnErtWSW", "currencySymbol": "iwD7mpVc8jOnloJw", "currencyType": "VIRTUAL", "decimals": 32, "namespace": "g8wZTHjUTI77JXzA"}, "ext": {"5CMDgX1whcCbEoYg": {}, "cDIypaYiCz1spIhK": {}, "88vi042KPDAdY9uk": {}}, "free": false}, "orderNo": "SbpiuUoaLzs073EU", "origin": "Xbox", "overrideBundleItemQty": {"6EAQQskZI1ArvsiZ": 82, "x3bOn5Q6H6hpDNIN": 55, "UvlK8JaSeI0D33zD": 61}, "quantity": 11, "region": "JbUJqNtzAOjr0wjj", "source": "REWARD", "startDate": "1977-02-22T00:00:00Z", "storeId": "ejcXGnk8uR428bhD"}'
"""

result, error = fulfill_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
