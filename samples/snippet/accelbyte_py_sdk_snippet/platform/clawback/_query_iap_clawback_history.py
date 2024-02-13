import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_iap_clawback_history
from accelbyte_py_sdk.api.platform.models import IAPClawbackPagingSlicedResult

result, error = query_iap_clawback_history(
    end_time=end_time,
    event_type=event_type,
    external_order_id=external_order_id,
    limit=limit,
    offset=offset,
    start_time=start_time,
    status=status,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
