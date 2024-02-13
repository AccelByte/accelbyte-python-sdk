import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_revoke_game_session_code
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = public_revoke_game_session_code(
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
