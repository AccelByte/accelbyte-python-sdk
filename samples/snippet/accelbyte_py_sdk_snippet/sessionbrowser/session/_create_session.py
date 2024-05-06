import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionbrowser import create_session
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsCreateSessionRequest
from accelbyte_py_sdk.api.sessionbrowser.models import ModelsSessionResponse
from accelbyte_py_sdk.api.sessionbrowser.models import ResponseError
from accelbyte_py_sdk.api.sessionbrowser.models import RestapiErrorResponseV2

"""
body:
Definition: ModelsCreateSessionRequest
game_session_setting: ModelsGameSessionSetting
Definition: ModelsGameSessionSetting
    allow_join_in_progress: bool
    current_internal_player: int
    current_player: int
    map_name: str
    max_internal_player: int
    max_player: int
    mode: str
    num_bot: int
    password: str
    settings: Dict[str, Any]
game_version: str
namespace: str
session_type: str
username: str

Example: '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 0, "current_player": 95, "map_name": "WAz7Ypeuy0fuIdMr", "max_internal_player": 83, "max_player": 14, "mode": "YHFPp0ffEzz4vyxi", "num_bot": 39, "password": "bH2ZvzwyZXhUEZDF", "settings": {"o2Ppf5w92i2Xsl7u": {}, "fyH6ma0qp4cy4yNt": {}, "MSY0GLcBjbvKPJiy": {}}}, "game_version": "mG00eZnTz01FhOU7", "namespace": "hfKQSamw2qbageaz", "session_type": "m0qXilf3YKbV52Bl", "username": "fK3JkmpWbqnD4MOs"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
