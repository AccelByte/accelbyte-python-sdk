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

Example: '{"duration": 35, "endDate": "1972-05-24T00:00:00Z", "entitlementCollectionId": "WAgzv9IyxEXK1gkW", "entitlementOrigin": "Twitch", "itemId": "5OGXoDqyjaMS7qUm", "itemSku": "An2wNlbQFk6q9WSS", "language": "LfRTDwankxWqlTRB", "metadata": {"N2DIPKdsRTopbFBG": {}, "pEWhVK4cFL1eAvRr": {}, "mzIGs9LPYhNqrx0E": {}}, "order": {"currency": {"currencyCode": "FYOP00xR1OKa3y7E", "currencySymbol": "0i18E4E25KyCShx5", "currencyType": "VIRTUAL", "decimals": 100, "namespace": "bHlNcv6nIezAx85W"}, "ext": {"mIGM1DnD7YOj2UCw": {}, "FSiaEHtSrAFqEjyG": {}, "fOubBbsYIhG11ywj": {}}, "free": true}, "orderNo": "cXZyvnLxDGQBQH9x", "origin": "Twitch", "overrideBundleItemQty": {"TJw2SIIB9PiH4B7d": 97, "jy7dz6BCF65JlLhS": 43, "iDkPS5k341Oke0Vv": 80}, "quantity": 15, "region": "O4HQ4Mg93VsQ3pgD", "source": "ORDER_REVOCATION", "startDate": "1972-07-17T00:00:00Z", "storeId": "xlChiQKcxgK39eHq"}'
"""

result, error = fulfill_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
