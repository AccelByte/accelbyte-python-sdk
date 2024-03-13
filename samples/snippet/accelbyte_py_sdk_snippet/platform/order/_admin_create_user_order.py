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

Example: '{"currencyCode": "lmP7qnBSiZOUuarx", "currencyNamespace": "s24PgeoToGkXGXWY", "discountedPrice": 70, "entitlementPlatform": "Oculus", "ext": {"RUkhVeybkoT8Oo21": {}, "33XHM7fynJKY25Pv": {}, "2JKqzvnlx3xcHl0o": {}}, "itemId": "woNaqGWHkqpulOlV", "language": "wZWtXk1pN4NEHcrR", "options": {"skipPriceValidation": true}, "platform": "Oculus", "price": 38, "quantity": 17, "region": "6eySdkF8UKFNeK6D", "returnUrl": "wdkSQ1tP2b26EHSs", "sandbox": false, "sectionId": "GCtjsH8BWbMSVKMS"}'
"""

result, error = admin_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
