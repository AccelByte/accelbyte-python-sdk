import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import admin_query_matchmaking_detail
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsMatchmakingDetailQueryResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = admin_query_matchmaking_detail(
    game_session_id=game_session_id,
    limit=limit,
    offset=offset,
    order=order,
    order_by=order_by,
    ticket_id=ticket_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
