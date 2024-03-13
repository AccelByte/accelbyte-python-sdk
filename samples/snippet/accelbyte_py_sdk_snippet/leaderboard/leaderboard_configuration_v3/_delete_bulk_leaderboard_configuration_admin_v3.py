import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import (
    delete_bulk_leaderboard_configuration_admin_v3,
)
from accelbyte_py_sdk.api.leaderboard.models import ModelsDeleteBulkLeaderboardsReq
from accelbyte_py_sdk.api.leaderboard.models import ModelsDeleteBulkLeaderboardsResp
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsDeleteBulkLeaderboardsReq
leaderboard_codes: List[str]

Example: '{"leaderboardCodes": ["KD43tfYuhx0pFCFf", "EjSytqgHMDgOfU3x", "hvIIp4Wu6a21RuV9"]}'
"""

result, error = delete_bulk_leaderboard_configuration_admin_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
