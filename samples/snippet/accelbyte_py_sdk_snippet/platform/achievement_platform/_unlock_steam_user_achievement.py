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

Example: '{"achievements": [{"id": "hYXmgvXSqiOPkZJY", "value": 64}, {"id": "i7vNWiUFV8qziFg1", "value": 11}, {"id": "YIBwsKjsxJR9PKNw", "value": 54}], "steamUserId": "BzoBvuNWsedU5LMQ"}'
"""

result, error = unlock_steam_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
