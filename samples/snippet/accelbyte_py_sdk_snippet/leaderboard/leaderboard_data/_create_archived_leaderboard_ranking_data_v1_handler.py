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

Example: '{"leaderboardCodes": ["gq2LKNVrUMPPb4c5", "SLFrx5pIh5CTA8JO", "JA4gLXfFOxXsHYnQ"], "limit": 1, "slug": "7jJMlcBjllha5jJ9"}'
"""

result, error = create_archived_leaderboard_ranking_data_v1_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
