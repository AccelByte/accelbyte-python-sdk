import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import admin_update_achievement_list_order
from accelbyte_py_sdk.api.achievement.models import ModelsAchievementOrderUpdateRequest
from accelbyte_py_sdk.api.achievement.models import ResponseError

"""
body:
Definition: ModelsAchievementOrderUpdateRequest
target_order: int

Example: '{"targetOrder": 87}'
"""

result, error = admin_update_achievement_list_order(
    body=body,
    achievement_code=achievement_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
