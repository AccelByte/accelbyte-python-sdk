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
discount_codes: List[str]
discounted_price: int
ext: Dict[str, Any]
item_id: str
language: str
price: int
quantity: int
region: str
return_url: str
section_id: str

Example: '{"currencyCode": "Gs215EFC4zuMGlTP", "discountCodes": ["zHFQFr64fkei5wEB", "Net73SbfvGVAC2KF", "9RWifYOkhikC0rM7"], "discountedPrice": 73, "ext": {"K0uxEcnYdj3oK2PL": {}, "aSyJe4LY39coqn43": {}, "oA9mjcxAg7D2npJg": {}}, "itemId": "EncDskydm5G59suL", "language": "jC_Zu", "price": 4, "quantity": 74, "region": "uBjGDh7FNn1CsrzB", "returnUrl": "w5PxbijGzseaJKpr", "sectionId": "wcs3w2S71jlZbl2t"}'
"""

result, error = public_create_user_order(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
