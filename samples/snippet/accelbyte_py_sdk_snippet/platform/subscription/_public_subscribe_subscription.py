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

Example: '{"currencyCode": "9GLB56OlTJUYl90E", "itemId": "nPIr6uHfCb6RpHDD", "language": "OKyK", "region": "XEYn1eBNUPnAbrXB", "returnUrl": "s8BcFhfRNaB7V4Da", "source": "qZUl9JhIrg9JV0lu"}'
"""

result, error = public_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
