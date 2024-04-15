import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_total_player_persession
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayTotalPlayerPersessionAVGQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_total_player_persession(
    end_date=end_date,
    start_date=start_date,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
