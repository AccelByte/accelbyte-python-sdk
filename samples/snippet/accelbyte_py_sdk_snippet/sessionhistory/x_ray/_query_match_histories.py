import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_match_histories
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayMatchHistorQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_match_histories(
    match_id=match_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
