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

Example: '{"grantDays": 31, "itemId": "S9FDklGTX82S6sPh", "language": "EsZ3PidxIxOEQBo1", "reason": "y6ETpzwDmUG0YWuV", "region": "bGjV2zc6DfQNqTuL", "source": "V2OZbWj5NITOH8J1"}'
"""

result, error = platform_subscribe_subscription(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
