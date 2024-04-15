import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_match_length_durationp_avg
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayMatchLengthDurationQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_match_length_durationp_avg(
    end_date=end_date,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
