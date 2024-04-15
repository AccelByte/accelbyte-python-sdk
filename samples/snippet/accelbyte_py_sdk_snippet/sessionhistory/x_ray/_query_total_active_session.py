import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_total_active_session
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayTotalActiveSessionQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_total_active_session(
    end_date=end_date,
    start_date=start_date,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
