import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_fulfillment_histories
from accelbyte_py_sdk.api.platform.models import FulfillmentHistoryPagingSlicedResult

result, error = query_fulfillment_histories(
    limit=limit,
    offset=offset,
    status=status,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
