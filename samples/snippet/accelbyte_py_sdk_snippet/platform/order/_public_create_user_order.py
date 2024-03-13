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

Example: '{"currencyCode": "qw59qZIsNyIsLHWy", "discountedPrice": 98, "ext": {"NL8nzdx7MEkP1bcF": {}, "cXx8NbqBnrrBDzcD": {}, "22gErzOVhuIkQoRS": {}}, "itemId": "dQ8JGiTdN4A5WjdP", "language": "tD_Wqez", "price": 40, "quantity": 72, "region": "u07etTMDmd2hmU8Q", "returnUrl": "EIhoeTLodCbYjXnH", "sectionId": "mtajYiZPxL4MDDf2"}'
"""

result, error = public_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
