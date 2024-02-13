import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import get_leaderboard_configurations_public_v3
from accelbyte_py_sdk.api.leaderboard.models import (
    ModelsGetAllLeaderboardConfigsPublicRespV3,
)
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = get_leaderboard_configurations_public_v3(
    is_deleted=is_deleted,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
