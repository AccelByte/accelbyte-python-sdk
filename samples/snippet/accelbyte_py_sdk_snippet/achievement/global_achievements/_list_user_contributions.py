import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import list_user_contributions
from accelbyte_py_sdk.api.achievement.models import (
    ModelsPaginatedUserContributionResponse,
)
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = list_user_contributions(
    user_id=user_id,
    achievement_codes=achievement_codes,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
