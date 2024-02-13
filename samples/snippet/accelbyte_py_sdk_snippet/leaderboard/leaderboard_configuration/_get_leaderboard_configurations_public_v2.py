import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import get_leaderboard_configurations_public_v2
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse
from accelbyte_py_sdk.api.leaderboard.models import V2GetAllLeaderboardConfigsPublicResp

result, error = get_leaderboard_configurations_public_v2(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
