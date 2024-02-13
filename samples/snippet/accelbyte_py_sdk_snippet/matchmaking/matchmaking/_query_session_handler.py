import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import query_session_handler
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchmakingResult
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

result, error = query_session_handler(
    match_id=match_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
