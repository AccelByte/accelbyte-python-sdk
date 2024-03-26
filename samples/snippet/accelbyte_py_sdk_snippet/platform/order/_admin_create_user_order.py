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

Example: '{"currencyCode": "xBWxdGrxyq8CnEK0", "currencyNamespace": "qPOt5O10puwNYXAb", "discountedPrice": 59, "entitlementPlatform": "Steam", "ext": {"V0ipR1GSzeQqjiqF": {}, "Jx2JNqeXIIhM3LX3": {}, "ScVEBWu8ZPuOPVjz": {}}, "itemId": "bsTMuX8AuYjT98pB", "language": "xhorQBtmpz5drbOo", "options": {"skipPriceValidation": true}, "platform": "Steam", "price": 33, "quantity": 73, "region": "gQLBk2FEdA49Yrck", "returnUrl": "CReAkxhHvabtAOPI", "sandbox": true, "sectionId": "LytZhPaVsXBVKmhP"}'
"""

result, error = admin_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
