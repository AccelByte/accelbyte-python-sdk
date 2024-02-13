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

Example: '{"currencyCode": "aTCXDl4yqF0zoLZs", "discountedPrice": 71, "ext": {"92VZLFGXUJHarQnn": {}, "hpxjSBYH14aESbS5": {}, "7kbxqQSVBEGKDbuM": {}}, "itemId": "pRyWkuYxgGOthz8Z", "language": "Jdr_RU", "price": 54, "quantity": 91, "region": "cyl1RbWF3KAWWNPD", "returnUrl": "bdCHnWv9a7GlXxo3", "sectionId": "gT27rqmQpPXGl7YA"}'
"""

result, error = public_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
