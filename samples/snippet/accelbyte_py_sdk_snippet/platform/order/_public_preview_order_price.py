import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_preview_order_price
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import OrderDiscountPreviewRequest
from accelbyte_py_sdk.api.platform.models import OrderDiscountPreviewResponse
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: OrderDiscountPreviewRequest
currency_code: str
discount_codes: List[str]
discounted_price: int
item_id: str
price: int
quantity: int

Example: '{"currencyCode": "51pOhLIMadHKML12", "discountCodes": ["vetpb3IaMWoIUZd8", "TALbQeoi8wTQIAaZ", "WsxkXEDfoIhULUmI"], "discountedPrice": 40, "itemId": "vuP4wtQIxjLDgbqk", "price": 53, "quantity": 34}'
"""

result, error = public_preview_order_price(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
