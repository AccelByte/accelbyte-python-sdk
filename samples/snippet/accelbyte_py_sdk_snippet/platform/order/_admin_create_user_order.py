import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import admin_create_user_order
from accelbyte_py_sdk.api.platform.models import AdminOrderCreate
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import OrderInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: AdminOrderCreate
currency_code: str
currency_namespace: str
discounted_price: int
entitlement_platform: str
ext: Dict[str, Any]
item_id: str
language: str
options: OrderCreationOptions
Definition: OrderCreationOptions
    skip_price_validation: bool
platform: str
price: int
quantity: int
region: str
return_url: str
sandbox: bool
section_id: str

Example: '{"currencyCode": "xxR3sCxvESKzV0Jv", "currencyNamespace": "JbJwdM0n6ShnYD1t", "discountedPrice": 55, "entitlementPlatform": "Other", "ext": {"o2GSLlbZTSa9D6GK": {}, "n5pdANDfLQ4HXtTL": {}, "OjawScV15IBJ40Gz": {}}, "itemId": "r4kIrXohwIJsFGyi", "language": "VjXN3Wgu4TbDzWY3", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 39, "quantity": 95, "region": "kxujfgYndr8lqgb6", "returnUrl": "DtgbEUHd7VFjZTty", "sandbox": true, "sectionId": "LQuJoU8KMIKkhMXo"}'
"""

result, error = admin_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
