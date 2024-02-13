import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import delete_user_rankings_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = delete_user_rankings_admin_v1(
    user_id=user_id,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
