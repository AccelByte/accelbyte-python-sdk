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

Example: '{"allTime": true, "cycleIds": ["8NtGxNN4zT82DnhG", "bbaaAcFrXqvzaMug", "5k5o9QY4icLSTDzq"], "descending": false, "description": "3z7V04HImJQLx1fC", "iconURL": "fWZ8UzfoXBjcCBUA", "leaderboardCode": "CjUqh80jUCUWEfYz", "name": "1A6mhhlkXULtCVte", "statCode": "tyDesd0oyk5H0983"}'
"""

result, error = create_leaderboard_configuration_admin_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
