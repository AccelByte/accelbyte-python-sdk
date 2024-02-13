import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_query_game_sessions
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionQueryResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_query_game_sessions(
    configuration_name=configuration_name,
    ds_pod_name=ds_pod_name,
    from_time=from_time,
    game_mode=game_mode,
    is_persistent=is_persistent,
    is_soft_deleted=is_soft_deleted,
    joinability=joinability,
    limit=limit,
    match_pool=match_pool,
    member_id=member_id,
    offset=offset,
    order=order,
    order_by=order_by,
    session_id=session_id,
    status=status,
    status_v2=status_v2,
    to_time=to_time,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
