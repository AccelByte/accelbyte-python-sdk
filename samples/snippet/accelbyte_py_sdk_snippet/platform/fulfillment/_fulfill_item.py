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

Example: '{"duration": 95, "endDate": "1973-12-08T00:00:00Z", "entitlementCollectionId": "uns1hUKwklczCKWF", "entitlementOrigin": "Twitch", "itemId": "U71qM2Wk69HoNtHm", "itemSku": "j8rW2iLNu7VCAaGL", "language": "9gg0BthYhK6Rtg5N", "metadata": {"SsLrQRh0Aew5YgiD": {}, "a52zlxipF3i7WgXW": {}, "THWcgQqGRu6SOkav": {}}, "order": {"currency": {"currencyCode": "HkRCecvtYronKUfm", "currencySymbol": "u9pc4iS3lRCAZvl9", "currencyType": "REAL", "decimals": 85, "namespace": "DzRxIZg3kNyC9P8q"}, "ext": {"K5mDxgVGJQ6M9r3h": {}, "pD1nsMxGtbaQQ9ox": {}, "51LW5JXF6lOYtwtA": {}}, "free": true}, "orderNo": "fMcMVK6ihIArN2DS", "origin": "Other", "overrideBundleItemQty": {"RhbMuMQZkupLf9pv": 77, "acSeLDLzu7bCPASI": 4, "b1g5YmuAAxH2ussK": 57}, "quantity": 4, "region": "hwCVqAwJqEdI2RjX", "source": "GIFT", "startDate": "1999-01-14T00:00:00Z", "storeId": "lGnKypnMf3ZvnYYZ"}'
"""

result, error = fulfill_item(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
