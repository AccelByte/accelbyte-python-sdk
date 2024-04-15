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

Example: '{"currencyCode": "p882co5osQYIWs6J", "currencyNamespace": "Dc6Iv7ARj1AiFkUU", "discountedPrice": 30, "entitlementPlatform": "IOS", "ext": {"OAvlcTg864aA5nuS": {}, "LkKmRw97jLTEKag4": {}, "HpUJxzgV4rwCy3p7": {}}, "itemId": "DiSUNdKTQ2onB083", "language": "6CVTzUeMaEZMEcLO", "options": {"skipPriceValidation": true}, "platform": "Other", "price": 54, "quantity": 32, "region": "nMGYg4OjjHUpWdlZ", "returnUrl": "yfbkIIXadrkhHj58", "sandbox": false, "sectionId": "NnkMk3O0h1QjaYHj"}'
"""

result, error = admin_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
