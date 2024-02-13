import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import admin_list_user_achievements
from accelbyte_py_sdk.api.achievement.models import (
    ModelsPaginatedUserAchievementResponse,
)
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = admin_list_user_achievements(
    user_id=user_id,
    limit=limit,
    offset=offset,
    prefer_unlocked=prefer_unlocked,
    sort_by=sort_by,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
