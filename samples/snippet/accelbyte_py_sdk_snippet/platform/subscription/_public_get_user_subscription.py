import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_user_subscription
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SubscriptionInfo

result, error = public_get_user_subscription(
    subscription_id=subscription_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
