import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import (
    admin_get_matchmaking_detail_by_session_id,
)
from accelbyte_py_sdk.api.sessionhistory.models import ApimodelsMatchmakingDetail
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = admin_get_matchmaking_detail_by_session_id(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
