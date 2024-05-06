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

Example: '{"duration": 12, "endDate": "1992-12-09T00:00:00Z", "entitlementCollectionId": "i73SaXP7hRwXrwav", "entitlementOrigin": "Xbox", "itemId": "S0ANM7S4RNdfpy3u", "itemSku": "ORmt4MrNWP0zNneB", "language": "ROJe6vYGwUGrWdMv", "metadata": {"5aI3dnng1ddc7z7n": {}, "PR8hH68JIWgP1G89": {}, "0VAHCuM1ZsIZGeM0": {}}, "order": {"currency": {"currencyCode": "L6ShCbeFV0S6zU7H", "currencySymbol": "hUBfwF1JfE9CyDOD", "currencyType": "VIRTUAL", "decimals": 34, "namespace": "jG9kclgnqf33EjDJ"}, "ext": {"EGiECIsoch3pAeSU": {}, "68xvK7aHZoQG5sdq": {}, "6U8ubt9xxzmhhQ71": {}}, "free": true}, "orderNo": "fD8y1LSqYAWi2QwZ", "origin": "Playstation", "overrideBundleItemQty": {"iQUoj0K9uwfut2Qn": 21, "JJREwM9EOHmnwX0B": 89, "paztuxZTg2a3XqzU": 59}, "quantity": 53, "region": "AB6jB46XYvPlrn9w", "source": "ORDER_REVOCATION", "startDate": "1996-06-29T00:00:00Z", "storeId": "JtHxfMMKnrWA298w"}'
"""

result, error = fulfill_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
