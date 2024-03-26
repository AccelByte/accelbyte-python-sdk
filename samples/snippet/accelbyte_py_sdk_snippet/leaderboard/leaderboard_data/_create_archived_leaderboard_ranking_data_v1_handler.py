import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import (
    create_archived_leaderboard_ranking_data_v1_handler,
)
from accelbyte_py_sdk.api.leaderboard.models import ModelsArchiveLeaderboardReq
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsArchiveLeaderboardReq
leaderboard_codes: List[str]
limit: int
slug: str

Example: '{"leaderboardCodes": ["QXs91KYfxDZ8P773", "lUk8FlRWJfCj7ea3", "10acgoPtGiEaUfvS"], "limit": 11, "slug": "T44ffbIvafWXiOS1"}'
"""

result, error = create_archived_leaderboard_ranking_data_v1_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
