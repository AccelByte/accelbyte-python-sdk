import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import grant_days_to_subscription
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import GrantSubscriptionDaysRequest
from accelbyte_py_sdk.api.platform.models import SubscriptionInfo

"""
body:
Definition: GrantSubscriptionDaysRequest
grant_days: int
reason: str

Example: '{"grantDays": 79, "reason": "0PbRMYHe6zyIMytM"}'
"""

result, error = grant_days_to_subscription(
    subscription_id=subscription_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
