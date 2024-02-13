import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import (
    get_current_cycle_leaderboard_ranking_public_v3,
)
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardRankingResp
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = get_current_cycle_leaderboard_ranking_public_v3(
    cycle_id=cycle_id,
    leaderboard_code=leaderboard_code,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
