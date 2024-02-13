import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import create_leaderboard_configuration_admin_v3
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardConfigRespV3
from accelbyte_py_sdk.api.leaderboard.models import ModelsLeaderboardConfigReqV3
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsLeaderboardConfigReqV3
all_time: bool
cycle_ids: List[str]
descending: bool
description: str
icon_url: str
leaderboard_code: str
name: str
stat_code: str

Example: '{"allTime": true, "cycleIds": ["YlXStAyax6uy02Wa", "7jH5On8K06X6qspo", "wnFWJvlX8uKe1psB"], "descending": true, "description": "A1I39BGFcAUsPePx", "iconURL": "mfdwjKVhPtlavtr4", "leaderboardCode": "bvU9YCA2wOnIk1nd", "name": "ZrBNLfFU05whfP3Y", "statCode": "h2mUIEm9hgNWIov3"}'
"""

result, error = create_leaderboard_configuration_admin_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
