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

Example: '{"currencyCode": "XmSiHNDxj4xulzJk", "currencyNamespace": "N5pFPl6G5Dhh46By", "discountedPrice": 31, "entitlementPlatform": "IOS", "ext": {"J0peDPiAB24Vd3Rl": {}, "AyPh27GY37kh7NP4": {}, "jWjSE4SiYe6pdOFx": {}}, "itemId": "mDrOCHgaOmHZPCo8", "language": "TzJ7IQAh5n4lYQSe", "options": {"skipPriceValidation": false}, "platform": "Playstation", "price": 29, "quantity": 95, "region": "X9EvL71n0y2qsHge", "returnUrl": "SFAcy8rYAPzxAAoa", "sandbox": false, "sectionId": "3tBR3THeXnxMZiPL"}'
"""

result, error = admin_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
