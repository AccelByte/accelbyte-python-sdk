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

Example: '{"leaderboardCodes": ["T4AQmWKEe4Gh4CsE", "Zned58bcyQhPjVNt", "Qq0PkB9v4j9ECDyC"]}'
"""

result, error = delete_bulk_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
