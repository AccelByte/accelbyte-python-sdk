import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import (
    admin_get_archived_leaderboard_ranking_data_v1_handler,
)
from accelbyte_py_sdk.api.leaderboard.models import (
    ModelsArchiveLeaderboardSignedURLResponse,
)
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = admin_get_archived_leaderboard_ranking_data_v1_handler(
    leaderboard_codes=leaderboard_codes,
    slug=slug,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
