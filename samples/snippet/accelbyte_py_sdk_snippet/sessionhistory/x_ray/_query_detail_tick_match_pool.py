import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_detail_tick_match_pool
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayMatchPoolPodTickQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_detail_tick_match_pool(
    pod_name=pod_name,
    pool_name=pool_name,
    end_date=end_date,
    start_date=start_date,
    all=all,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
