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

Example: '{"allTime": true, "cycleIds": ["mFq1T7EmMMEA8dgS", "SFufUpEkTSfEa1dG", "i1NEAfCv1W4xA3Up"], "descending": true, "description": "UKHwEXt4Wpmt8aBJ", "iconURL": "QH1XfDB2vAJxnOTh", "name": "HYPFrOGJcVtWuj85"}'
"""

result, error = update_leaderboard_configuration_admin_v3(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
