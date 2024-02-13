import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_game_session_reject
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_game_session_reject(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
