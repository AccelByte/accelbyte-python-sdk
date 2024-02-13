import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import admin_get_achievement
from accelbyte_py_sdk.api.achievement.models import ModelsAchievementResponse
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = admin_get_achievement(
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
