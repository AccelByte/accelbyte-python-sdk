import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import (
    delete_bulk_leaderboard_configuration_admin_v1,
)
from accelbyte_py_sdk.api.leaderboard.models import ModelsDeleteBulkLeaderboardsReq
from accelbyte_py_sdk.api.leaderboard.models import ModelsDeleteBulkLeaderboardsResp
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsDeleteBulkLeaderboardsReq
leaderboard_codes: List[str]

Example: '{"leaderboardCodes": ["H4MksOkHzpJRIjBB", "0qRO1XjjSPgMD2Uu", "I6yTeotw3jZf8jTY"]}'
"""

result, error = delete_bulk_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
