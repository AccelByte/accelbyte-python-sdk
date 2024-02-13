import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import hard_delete_leaderboard_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = hard_delete_leaderboard_admin_v1(
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
