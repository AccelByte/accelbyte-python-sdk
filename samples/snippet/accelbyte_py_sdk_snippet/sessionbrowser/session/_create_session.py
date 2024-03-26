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

Example: '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 14, "current_player": 24, "map_name": "fogTPlS2FAxgn7di", "max_internal_player": 51, "max_player": 56, "mode": "ElxNrKqHMpWsopPo", "num_bot": 53, "password": "aGdwJrzdci2RosJz", "settings": {"5d0HtzurKwdeLLwE": {}, "t3HnTgGrMsfF0e1Y": {}, "Ar1yQ8FIHN6120Om": {}}}, "game_version": "4rvWasqX6ebwWfnR", "namespace": "oygZkIESPOmbaB7Y", "session_type": "q82zHt6xfSL5jiWE", "username": "SecEwcO0IaJyFOsZ"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
