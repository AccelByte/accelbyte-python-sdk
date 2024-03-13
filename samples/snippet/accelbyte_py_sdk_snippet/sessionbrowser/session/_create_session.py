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

Example: '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 50, "current_player": 38, "map_name": "yisDTIJ0rtbPEYAS", "max_internal_player": 42, "max_player": 25, "mode": "6Ff1A3w27Ypk7xsa", "num_bot": 55, "password": "JwyH3zkvgtq5UxT0", "settings": {"bcsJbQihrfa7YA3v": {}, "E2MNCDOZDmohArfH": {}, "WwhcLrDnApbLTLVl": {}}}, "game_version": "0TPiH5fPokTMmi9f", "namespace": "6p9exNGaFSD9UHjS", "session_type": "miZqKaZ8OMEqsCUL", "username": "7FCcHmEbpngUEnpL"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
