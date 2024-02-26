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

Example: '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 34, "current_player": 75, "map_name": "lbeXqjpUM7P603vz", "max_internal_player": 30, "max_player": 60, "mode": "CsLU4Emh6BpaOZLM", "num_bot": 47, "password": "gxFIzTBsFZjSFlOF", "settings": {"f2gNGBfND9TnA9g5": {}, "0Xg1b0Qaoh3Q5o9q": {}, "11xZQr2nPwMs1TD9": {}}}, "game_version": "b3IpG1ikAQoFEdtk", "namespace": "h150Hfd4H8swkGKE", "session_type": "NdexYB0DejMQnyPc", "username": "ZyLGlgJOBW0aGXm8"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
