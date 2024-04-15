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

Example: '{"leaderboardCodes": ["0OCwwG58Sex7NNu1", "vqaHZqbVixJPw4BY", "IkQXzktULqsSCGK2"], "limit": 77, "slug": "0U7WS3JdfqiWUMxh"}'
"""

result, error = create_archived_leaderboard_ranking_data_v1_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
