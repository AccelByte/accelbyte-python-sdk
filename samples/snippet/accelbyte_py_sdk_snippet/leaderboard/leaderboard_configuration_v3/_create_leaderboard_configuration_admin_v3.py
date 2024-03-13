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

Example: '{"allTime": true, "cycleIds": ["FUQ5WNNInZU0idjt", "q0ni4iPrZVNRw4gb", "3BqiMyiqHn91MlQf"], "descending": false, "description": "2tMXsaf07LsYC7de", "iconURL": "ocBcqJfV6sUyzNTB", "leaderboardCode": "p8BblUXs5L4QRKxH", "name": "JVSfXkGgEt0noL6c", "statCode": "eAYheWO7dN1UNmgK"}'
"""

result, error = create_leaderboard_configuration_admin_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
