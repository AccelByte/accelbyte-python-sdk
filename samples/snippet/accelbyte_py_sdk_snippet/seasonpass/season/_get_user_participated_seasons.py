import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import get_user_participated_seasons
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import ListUserSeasonInfoPagingSlicedResult

result, error = get_user_participated_seasons(
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
