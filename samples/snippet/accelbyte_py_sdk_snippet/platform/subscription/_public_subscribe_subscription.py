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

Example: '{"currencyCode": "P5g2sWdwi7GHZrjT", "itemId": "O4fdynBiUWbs3GgY", "language": "wEi_101", "region": "BglpgkhpFOhv71F6", "returnUrl": "6ZpLg3EMRcFSNxpa", "source": "Aw7tECneAH57UDzk"}'
"""

result, error = public_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
