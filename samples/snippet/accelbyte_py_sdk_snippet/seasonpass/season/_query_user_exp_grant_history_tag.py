import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import query_user_exp_grant_history_tag
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import ReasonTagsResult

result, error = query_user_exp_grant_history_tag(
    user_id=user_id,
    season_id=season_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
