import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import add_player_to_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsAddPlayerRequest
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsAddPlayerResponse
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

"""
body:
Definition: ModelsAddPlayerRequest
as_spectator: bool
user_id: str

Example: '{"as_spectator": false, "user_id": "hIMhW2dSRWWSxzsB"}'
"""

result, error = add_player_to_session(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
