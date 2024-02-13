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

Example: '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 47, "current_player": 49, "map_name": "ZBezsTnrXi5mt2yC", "max_internal_player": 43, "max_player": 9, "mode": "MzwY9ioCQH7JouH5", "num_bot": 17, "password": "tstq0DTKUjWfLNoH", "settings": {"HKNY1oeZG6Ij1nks": {}, "oddSpTjj9ZdFPOAB": {}, "BgP50sGpUcJd4SAU": {}}}, "game_version": "YOMQmx1LvHEkHvXM", "namespace": "IEYIyGhJIFP8z6tr", "session_type": "vixJOoc75IZYbUj3", "username": "9FiFiA2764oIidvf"}'
"""

result, error = create_session(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
