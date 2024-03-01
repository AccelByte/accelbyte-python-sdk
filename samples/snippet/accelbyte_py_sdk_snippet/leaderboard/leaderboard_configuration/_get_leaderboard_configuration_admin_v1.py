import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import get_leaderboard_configuration_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardConfigResp
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = get_leaderboard_configuration_admin_v1(
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)