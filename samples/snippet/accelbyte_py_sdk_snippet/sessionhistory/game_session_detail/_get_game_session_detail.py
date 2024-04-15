import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import get_game_session_detail
from accelbyte_py_sdk.api.sessionhistory.models import ApimodelsGameSessionDetail
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = get_game_session_detail(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
