import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import public_list_achievements
from accelbyte_py_sdk.api.achievement.models import ModelsPublicAchievementsResponse
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = public_list_achievements(
    language=language,
    global_=global_,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
