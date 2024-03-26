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

Example: '{"currencyCode": "Sadr9mGsOiPn1w3s", "discountedPrice": 26, "ext": {"bR29mQG8twZZA9cz": {}, "f36kpRcy55Q8cQzW": {}, "WjJlbZxnx1B28gn2": {}}, "itemId": "0Ht7PO8n636g3AJG", "language": "AIG", "price": 34, "quantity": 79, "region": "TxxNhpspNWdoVA5B", "returnUrl": "qwoCfgbRe0ziPS2n", "sectionId": "CHk0TR67wrr0STEE"}'
"""

result, error = public_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
