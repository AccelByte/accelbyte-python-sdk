import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import public_get_achievement
from accelbyte_py_sdk.api.achievement.models import ModelsPublicAchievementResponse
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = public_get_achievement(
    achievement_code=achievement_code,
    language=language,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
