import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import admin_list_global_achievement_contributors
from accelbyte_py_sdk.api.achievement.models import ModelsPaginatedContributorResponse
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = admin_list_global_achievement_contributors(
    achievement_code=achievement_code,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
