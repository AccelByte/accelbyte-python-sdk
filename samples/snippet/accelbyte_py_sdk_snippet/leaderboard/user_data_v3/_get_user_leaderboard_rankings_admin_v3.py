import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import get_user_leaderboard_rankings_admin_v3
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetAllUserLeaderboardsRespV3
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = get_user_leaderboard_rankings_admin_v3(
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
