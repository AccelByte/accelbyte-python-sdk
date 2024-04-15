import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_create_user_order
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import OrderCreate
from accelbyte_py_sdk.api.platform.models import OrderInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: OrderCreate
currency_code: str
discounted_price: int
ext: Dict[str, Any]
item_id: str
language: str
price: int
quantity: int
region: str
return_url: str
section_id: str

Example: '{"currencyCode": "Sv6fGhvtu7yHI7AD", "discountedPrice": 98, "ext": {"5RoOSF4fwcDruuSq": {}, "J4IXG3KJ5zsThT9b": {}, "w7WmO3gyxOOgZ7Tb": {}}, "itemId": "NBPOau81iBTmmxZ5", "language": "Fq-DVwI_779", "price": 30, "quantity": 95, "region": "mYmNKkJx8Y6zxC3N", "returnUrl": "jsAtZwl5couZE0kz", "sectionId": "06qhxa4UloNGHtXm"}'
"""

result, error = public_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
