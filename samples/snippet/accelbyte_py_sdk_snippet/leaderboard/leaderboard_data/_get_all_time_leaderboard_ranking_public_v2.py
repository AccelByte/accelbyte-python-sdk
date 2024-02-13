import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import get_all_time_leaderboard_ranking_public_v2
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse
from accelbyte_py_sdk.api.leaderboard.models import (
    V2GetPublicLeaderboardRankingResponse,
)

result, error = get_all_time_leaderboard_ranking_public_v2(
    leaderboard_code=leaderboard_code,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
