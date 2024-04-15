import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import update_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionResponse
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsUpdateSessionRequest
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

"""
body:
Definition: ModelsUpdateSessionRequest
game_max_player: int

Example: '{"game_max_player": 13}'
"""

result, error = update_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
