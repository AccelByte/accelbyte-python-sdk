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

Example: '{"grantDays": 78, "itemId": "GJOHYk8y4bFAHQ7v", "language": "kF7S1kb2MRLaT3Qo", "reason": "lvINUv3mTc8MRWOz", "region": "W26EqnHbgItN1QJl", "source": "IzQVRsoU7yMJwOnW"}'
"""

result, error = platform_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
