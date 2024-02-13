import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import unlock_steam_user_achievement
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import SteamAchievementUpdateRequest
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: SteamAchievementUpdateRequest
achievements: List[SteamAchievement]
Definition: List[SteamAchievement]
    id_: str
    value: int
steam_user_id: str

Example: '{"achievements": [{"id": "QBI9R1V8QTwOPEFt", "value": 87}, {"id": "5q9WbkilNnmGPneo", "value": 35}, {"id": "Y114MhYdcrZVhACg", "value": 5}], "steamUserId": "rmDX0l8yoUyPNtqw"}'
"""

result, error = unlock_steam_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
