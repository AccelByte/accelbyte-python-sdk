import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import bulk_get_users_ranking_public_v3
from accelbyte_py_sdk.api.leaderboard.models import ModelsBulkUserIDsRequest
from accelbyte_py_sdk.api.leaderboard.models import ModelsBulkUserRankingResponseV3
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsBulkUserIDsRequest
user_ids: List[str]

Example: '{"userIds": ["RGudp79pnNtcB0uU", "VqluYrcLVd7MVxZZ", "ZbkUeIxqcxCyf5bV"]}'
"""

result, error = bulk_get_users_ranking_public_v3(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
