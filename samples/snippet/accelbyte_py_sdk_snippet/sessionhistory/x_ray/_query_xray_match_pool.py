import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_xray_match_pool
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayMatchPoolQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_xray_match_pool(
    pool_name=pool_name,
    end_date=end_date,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
