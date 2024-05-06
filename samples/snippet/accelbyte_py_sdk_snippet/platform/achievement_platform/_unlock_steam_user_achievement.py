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

Example: '{"achievements": [{"id": "hShxPL3iFfIi6gqe", "value": 1}, {"id": "jyc6AKsOvGjbrxXW", "value": 37}, {"id": "8wqwtU6nJuPIgndA", "value": 82}], "steamUserId": "VS1R4Aup61nYTlDQ"}'
"""

result, error = unlock_steam_user_achievement(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
