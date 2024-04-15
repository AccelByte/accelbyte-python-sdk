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

Example: '{"currencyCode": "a366Dw61t6Ldpxka", "itemId": "pFpibJdNiv0rp7ay", "language": "gT_ksZx", "region": "nFGBiOkdFBT9SoVz", "returnUrl": "NLMgGICqcNwbHZIb", "source": "M8TJxCkP4zZ3X6Kk"}'
"""

result, error = public_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
