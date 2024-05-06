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
discount_codes: List[str]
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

Example: '{"currencyCode": "VFrFgBpTZO4a1NVx", "currencyNamespace": "PYRatlHWGvAJqjpK", "discountCodes": ["CXGD63TX0nlD4e0m", "Og3LHNZ5Q8quFAeL", "7n2LkLvWVyQdJO7c"], "discountedPrice": 86, "entitlementPlatform": "Xbox", "ext": {"KJpjuAEZ3i5SSoE2": {}, "S2pnbibdwYrYHbxQ": {}, "kR7BirGLMLJkeyV7": {}}, "itemId": "NuUfGRoOqaiiA5KN", "language": "LlZfgjWhox3JpA62", "options": {"skipPriceValidation": true}, "platform": "Xbox", "price": 69, "quantity": 54, "region": "cAqG1yBEvi69nCEz", "returnUrl": "wWD3Pp2vST3Dm0QT", "sandbox": true, "sectionId": "jEbiTOKoli7kKH9w"}'
"""

result, error = admin_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
