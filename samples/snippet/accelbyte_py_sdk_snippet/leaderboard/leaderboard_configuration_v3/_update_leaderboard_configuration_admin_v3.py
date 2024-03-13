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

Example: '{"allTime": true, "cycleIds": ["hJHTiWypYXSh1Gi9", "txyvVmsMyGVYEl9X", "eSiRIjHqAdQ1EJqX"], "descending": false, "description": "CrcnVkIdYZyW4Qzr", "iconURL": "cW5enT54PwUpzS7U", "name": "JWd4UuU6mirpVsnk"}'
"""

result, error = update_leaderboard_configuration_admin_v3(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
