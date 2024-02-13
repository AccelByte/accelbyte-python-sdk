import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import query_user_exp_grant_history
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import ExpGrantHistoryPagingSlicedResult

result, error = query_user_exp_grant_history(
    user_id=user_id,
    from_=from_,
    limit=limit,
    offset=offset,
    season_id=season_id,
    source=source,
    tags=tags,
    to=to,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
