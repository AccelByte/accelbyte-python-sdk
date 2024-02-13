import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import get_user_ranking_public_v3
from accelbyte_py_sdk.api.leaderboard.models import ModelsUserRankingResponseV3
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = get_user_ranking_public_v3(
    leaderboard_code=leaderboard_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
