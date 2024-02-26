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

Example: '{"currencyCode": "69reaPGGAFa7R8tK", "discountedPrice": 52, "ext": {"Kuuq9FQ1ClvN6gVR": {}, "BCyUfTPneRKzL6UV": {}, "foggtRIOyeOQahD2": {}}, "itemId": "9JOuu3Jo7nWEszGu", "language": "AnKB", "price": 38, "quantity": 7, "region": "XktLO0rypTbS45QH", "returnUrl": "KIj6w3BX2eO43kPg", "sectionId": "6vcKIzGVqs7qmlrU"}'
"""

result, error = public_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
