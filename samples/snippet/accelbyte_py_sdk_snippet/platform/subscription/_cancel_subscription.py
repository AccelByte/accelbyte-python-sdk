import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import cancel_subscription
from accelbyte_py_sdk.api.platform.models import CancelRequest
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SubscriptionInfo

"""
body:
Definition: CancelRequest
immediate: bool
reason: str

Example: '{"immediate": false, "reason": "5Jj7diYlLiHttOcj"}'
"""

result, error = cancel_subscription(
    subscription_id=subscription_id,
    user_id=user_id,
    body=body,
    force=force,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
