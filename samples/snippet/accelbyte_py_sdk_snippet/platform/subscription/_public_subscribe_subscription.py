import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_subscribe_subscription
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SubscribeRequest
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: SubscribeRequest
currency_code: str
item_id: str
language: str
region: str
return_url: str
source: str

Example: '{"currencyCode": "kdE224BHCOSVQ8TJ", "itemId": "fxIjj140pFOn376E", "language": "zO_FAIX", "region": "VVj9rg9xuHO7KDqZ", "returnUrl": "MffSly4FM7E1XyBQ", "source": "X36ciZmfsDusEajt"}'
"""

result, error = public_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
