import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import public_list_global_achievements
from accelbyte_py_sdk.api.achievement.models import (
    ModelsPaginatedGlobalAchievementResponse,
)
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = public_list_global_achievements(
    achievement_codes=achievement_codes,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    status=status,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
