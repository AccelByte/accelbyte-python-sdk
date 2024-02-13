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

Example: '{"duration": 94, "endDate": "1992-12-11T00:00:00Z", "entitlementCollectionId": "FBYb7squnXgTfp4F", "entitlementOrigin": "GooglePlay", "itemId": "ayhxmdq2OcAYPo9r", "itemSku": "NJqEshOlTzFDLqkP", "language": "kIw7m0JZx7yPJS7A", "metadata": {"lnzu8SRCYb4QSFYc": {}, "D10Hqu9ydKF957B2": {}, "BW3lC7QWyZzZ69t7": {}}, "order": {"currency": {"currencyCode": "ROKMK4fFe4Stp95T", "currencySymbol": "vxX1VaBT2HSFKJ8w", "currencyType": "VIRTUAL", "decimals": 1, "namespace": "o2Bvawcb2lxYuene"}, "ext": {"S7IUo6CCAHvo4eyS": {}, "B5mZhzFYe7JseC1x": {}, "fnMbKrkZecuPgUJb": {}}, "free": false}, "orderNo": "QIW4TnnIQ4V7FZnK", "origin": "Twitch", "overrideBundleItemQty": {"FBNlMO1dVR3e7JTT": 75, "47OPaKpZzPKX9iZH": 22, "bJJjtE9WQoPZf6cs": 72}, "quantity": 43, "region": "6Ac3ktNyNqKlWt4R", "source": "REDEEM_CODE", "startDate": "1987-03-02T00:00:00Z", "storeId": "zH76JT9c0POBP4BJ"}'
"""

result, error = fulfill_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
