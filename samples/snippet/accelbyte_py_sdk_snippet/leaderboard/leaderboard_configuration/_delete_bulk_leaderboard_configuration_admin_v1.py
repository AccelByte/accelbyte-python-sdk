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

Example: '{"leaderboardCodes": ["56y5qQrFNEhhdYfE", "CvmQPk9Z61PCTdsD", "VhtZtuu2TnwfcKbu"]}'
"""

result, error = delete_bulk_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
