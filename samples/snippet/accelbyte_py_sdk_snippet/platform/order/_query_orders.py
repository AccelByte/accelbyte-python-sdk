import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_orders
from accelbyte_py_sdk.api.platform.models import OrderPagingResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = query_orders(
    end_time=end_time,
    limit=limit,
    offset=offset,
    order_nos=order_nos,
    sort_by=sort_by,
    start_time=start_time,
    status=status,
    with_total=with_total,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
