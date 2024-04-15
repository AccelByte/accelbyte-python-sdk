import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import admin_query_game_session_detail
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsGameSessionDetailQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = admin_query_game_session_detail(
    game_session_id=game_session_id,
    limit=limit,
    offset=offset,
    order=order,
    order_by=order_by,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
