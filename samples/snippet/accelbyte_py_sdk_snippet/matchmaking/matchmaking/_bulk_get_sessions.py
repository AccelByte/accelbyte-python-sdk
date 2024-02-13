import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import bulk_get_sessions
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchmakingResult
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

result, error = bulk_get_sessions(
    match_i_ds=match_i_ds,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
