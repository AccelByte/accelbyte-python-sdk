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

Example: '{"currencyCode": "NMZ9kgHfPTJQncV4", "itemId": "ur0NVthA6Vnm4ZM8", "language": "uL_fYqt", "region": "0zQ7VGWVeGYlQt6p", "returnUrl": "1PVVjaQAQsx3pL5V", "source": "05mc836xITrDfOqB"}'
"""

result, error = public_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
