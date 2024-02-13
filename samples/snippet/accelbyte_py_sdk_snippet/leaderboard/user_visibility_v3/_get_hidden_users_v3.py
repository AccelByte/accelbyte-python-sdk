import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import get_hidden_users_v3
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetHiddenUserResponse
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = get_hidden_users_v3(
    leaderboard_code=leaderboard_code,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
