import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import reset_global_achievement
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = reset_global_achievement(
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
