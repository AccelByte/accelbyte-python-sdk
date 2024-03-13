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

Example: '{"leaderboardCodes": ["6aw4gONpmiqhWBX1", "zW0AW2DNKn5NdNtG", "eALBhIncTtLgzZXL"]}'
"""

result, error = delete_bulk_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
