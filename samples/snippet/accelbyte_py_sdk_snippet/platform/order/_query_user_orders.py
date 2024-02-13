import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_user_orders
from accelbyte_py_sdk.api.platform.models import OrderPagingSlicedResult

result, error = query_user_orders(
    user_id=user_id,
    item_id=item_id,
    limit=limit,
    offset=offset,
    status=status,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
