import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_user_subscriptions
from accelbyte_py_sdk.api.platform.models import SubscriptionPagingSlicedResult

result, error = query_user_subscriptions(
    user_id=user_id,
    charge_status=charge_status,
    item_id=item_id,
    limit=limit,
    offset=offset,
    sku=sku,
    status=status,
    subscribed_by=subscribed_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
