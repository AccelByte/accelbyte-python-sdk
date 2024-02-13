import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import get_user_leaderboard_rankings_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetAllUserLeaderboardsResp
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = get_user_leaderboard_rankings_admin_v1(
    user_id=user_id,
    limit=limit,
    offset=offset,
    previous_version=previous_version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
