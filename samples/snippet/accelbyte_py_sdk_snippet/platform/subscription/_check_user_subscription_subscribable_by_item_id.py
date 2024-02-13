import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import (
    check_user_subscription_subscribable_by_item_id,
)
from accelbyte_py_sdk.api.platform.models import Subscribable

result, error = check_user_subscription_subscribable_by_item_id(
    user_id=user_id,
    item_id=item_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
