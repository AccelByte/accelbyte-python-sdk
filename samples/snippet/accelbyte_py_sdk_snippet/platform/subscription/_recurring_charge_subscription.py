import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import recurring_charge_subscription
from accelbyte_py_sdk.api.platform.models import RecurringChargeResult

result, error = recurring_charge_subscription(
    subscription_id=subscription_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
