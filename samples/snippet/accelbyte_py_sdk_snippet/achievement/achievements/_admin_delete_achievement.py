import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import admin_delete_achievement
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = admin_delete_achievement(
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
