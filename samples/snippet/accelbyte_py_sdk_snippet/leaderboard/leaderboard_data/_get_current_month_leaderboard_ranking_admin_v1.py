import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import (
    get_current_month_leaderboard_ranking_admin_v1,
)
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardRankingResp
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = get_current_month_leaderboard_ranking_admin_v1(
    leaderboard_code=leaderboard_code,
    limit=limit,
    offset=offset,
    previous_version=previous_version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
