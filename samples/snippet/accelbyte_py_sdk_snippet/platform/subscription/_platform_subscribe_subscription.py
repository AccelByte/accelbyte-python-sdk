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

Example: '{"grantDays": 32, "itemId": "wQ6aNgfaHGW2onpz", "language": "bIfsm5PqZMNOOrHV", "reason": "1EVfNrkgsFULDswd", "region": "kbIZlV0gYOQJWUB4", "source": "7bjJWPSjMfknA1KP"}'
"""

result, error = platform_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
