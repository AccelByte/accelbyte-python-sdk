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

Example: '{"duration": 71, "endDate": "1995-10-29T00:00:00Z", "entitlementCollectionId": "feJEtB8VvZCpsg2H", "entitlementOrigin": "Steam", "itemId": "RDb88nzuwS47RZU6", "itemSku": "4ExaRn7SiENLH8AX", "language": "pWehqHLKVJAtgobm", "metadata": {"3sHiMO5jss9shsJR": {}, "C3gugh8ZQI8e1VLJ": {}, "1dlbMIVQcphwwZUZ": {}}, "order": {"currency": {"currencyCode": "lfoZYSjVXD1u5sg1", "currencySymbol": "ImewJnVbpmaFTL4r", "currencyType": "VIRTUAL", "decimals": 64, "namespace": "kwonfZUjapnuJO6C"}, "ext": {"Dri8YIezcquZw6sd": {}, "akqDhMdOmdj5wmq9": {}, "ygX2tiLqwPamXH1q": {}}, "free": false}, "orderNo": "ZTYWUYuNGkNKbf6G", "origin": "System", "overrideBundleItemQty": {"hH35ZvTpxN1pVQl5": 30, "SVKHKqGd55GcUP5A": 73, "mMeph6FETBC2nQ3O": 83}, "quantity": 8, "region": "VG1n51WDLLkvcHSh", "source": "DLC", "startDate": "1985-07-28T00:00:00Z", "storeId": "AQg4le6SpYTCrJj5"}'
"""

result, error = fulfill_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
