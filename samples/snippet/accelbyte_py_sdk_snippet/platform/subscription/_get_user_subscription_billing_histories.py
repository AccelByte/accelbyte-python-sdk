import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_subscription_billing_histories
from accelbyte_py_sdk.api.platform.models import BillingHistoryPagingSlicedResult

result, error = get_user_subscription_billing_histories(
    subscription_id=subscription_id,
    user_id=user_id,
    exclude_free=exclude_free,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
