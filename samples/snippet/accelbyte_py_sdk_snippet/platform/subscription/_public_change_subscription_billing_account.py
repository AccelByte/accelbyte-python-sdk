import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_change_subscription_billing_account
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SubscriptionInfo

result, error = public_change_subscription_billing_account(
    subscription_id=subscription_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
