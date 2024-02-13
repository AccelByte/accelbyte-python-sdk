import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import delete_user_ranking_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = delete_user_ranking_admin_v1(
    leaderboard_code=leaderboard_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
