import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import get_session_history_detailed
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1
from accelbyte_py_sdk.api.matchmaking.models import (
    ServiceGetSessionHistoryDetailedResponseItem,
)

result, error = get_session_history_detailed(
    match_id=match_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
