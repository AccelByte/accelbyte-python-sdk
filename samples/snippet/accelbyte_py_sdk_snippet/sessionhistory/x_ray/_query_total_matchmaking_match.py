import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_total_matchmaking_match
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayMatchMatchmakingQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_total_matchmaking_match(
    end_date=end_date,
    start_date=start_date,
    match_pool=match_pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
