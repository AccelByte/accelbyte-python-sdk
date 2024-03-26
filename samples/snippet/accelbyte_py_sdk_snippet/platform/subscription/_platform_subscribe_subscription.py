import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import platform_subscribe_subscription
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import PlatformSubscribeRequest
from accelbyte_py_sdk.api.platform.models import SubscriptionInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: PlatformSubscribeRequest
grant_days: int
item_id: str
language: str
reason: str
region: str
source: str

Example: '{"grantDays": 34, "itemId": "GADeYSkKbejBGNP6", "language": "BSGh7lQKjg8b77a6", "reason": "nbbCao9wZIPzQoD7", "region": "hqqsPWEsZ3JIq2dK", "source": "Zeu5CNJP6HN777Di"}'
"""

result, error = platform_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
