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

Example: '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 91, "current_player": 53, "map_name": "8UHJJifz8M1uFmEC", "max_internal_player": 36, "max_player": 14, "mode": "wgXXHCYZlpLXe9A1", "num_bot": 18, "password": "DI6Y9IB8QINesAcD", "settings": {"SKKY0gbopxLLsO3u": {}, "hsdPa1RJfoTKMBlr": {}, "ik11ztr7SK3Uo09k": {}}}, "game_version": "aN54T6gG8bmkQEk3", "namespace": "5sZ937MZlYGEevVP", "session_type": "5RfXBbchskUjs2im", "username": "Ni0HqUITlfyggHnI"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
