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

Example: '{"allTime": true, "cycleIds": ["3b5sj2UhTaypEqhF", "yP9LcfJlJ70X9FXJ", "zE44KXpXTbbSMPvH"], "descending": false, "description": "1Xa9HRligL29z7t6", "iconURL": "6UMnwTTdxBMyVeOE", "leaderboardCode": "3gcZAEuOJeGhjpSu", "name": "OMIbWAbGlrXuWNky", "statCode": "An3kwK0wFjyckR47"}'
"""

result, error = create_leaderboard_configuration_admin_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
