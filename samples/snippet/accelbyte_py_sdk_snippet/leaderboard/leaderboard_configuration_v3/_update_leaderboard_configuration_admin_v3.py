import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import update_leaderboard_configuration_admin_v3
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardConfigRespV3
from accelbyte_py_sdk.api.leaderboard.models import ModelsUpdateLeaderboardConfigReqV3
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateLeaderboardConfigReqV3
all_time: bool
cycle_ids: List[str]
descending: bool
description: str
icon_url: str
name: str

Example: '{"allTime": true, "cycleIds": ["6E9Yl2iAVRnHm2yT", "jB3n2qznyeHNtg9S", "s0j6h6u8N9oimhjC"], "descending": true, "description": "VHFSTNcDP0AOwGZF", "iconURL": "fUxq9mHQchG9IJAA", "name": "2T2g2cC421eNX4sK"}'
"""

result, error = update_leaderboard_configuration_admin_v3(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
