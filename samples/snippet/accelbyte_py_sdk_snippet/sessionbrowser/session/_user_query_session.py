import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import user_query_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionQueryResponse
from accelbyte_py_sdk.api.sessionbrowser.models import ResponseError

result, error = user_query_session(
    session_type=session_type,
    game_mode=game_mode,
    game_version=game_version,
    joinable=joinable,
    limit=limit,
    match_exist=match_exist,
    match_id=match_id,
    offset=offset,
    server_status=server_status,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
