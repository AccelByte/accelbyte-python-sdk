import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import join_game_session
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = join_game_session(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
