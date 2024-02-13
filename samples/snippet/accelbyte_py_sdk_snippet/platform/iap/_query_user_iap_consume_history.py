import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_user_iap_consume_history
from accelbyte_py_sdk.api.platform.models import IAPConsumeHistoryPagingSlicedResult

result, error = query_user_iap_consume_history(
    user_id=user_id,
    end_time=end_time,
    limit=limit,
    offset=offset,
    start_time=start_time,
    status=status,
    type_=type_,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
