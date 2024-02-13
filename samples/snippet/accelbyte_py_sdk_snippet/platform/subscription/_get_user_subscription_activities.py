import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_subscription_activities
from accelbyte_py_sdk.api.platform.models import SubscriptionActivityPagingSlicedResult

result, error = get_user_subscription_activities(
    user_id=user_id,
    exclude_system=exclude_system,
    limit=limit,
    offset=offset,
    subscription_id=subscription_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
