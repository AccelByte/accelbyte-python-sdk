import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import create_leaderboard_configuration_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ModelsLeaderboardConfigReq
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsLeaderboardConfigReq
daily: ModelsDailyConfig
Definition: ModelsDailyConfig
    reset_time: str
descending: bool
icon_url: str
leaderboard_code: str
monthly: ModelsMonthlyConfig
Definition: ModelsMonthlyConfig
    reset_date: int
    reset_time: str
name: str
season_period: int
start_time: str
stat_code: str
weekly: ModelsWeeklyConfig
Definition: ModelsWeeklyConfig
    reset_day: int
    reset_time: str

Example: '{"daily": {"resetTime": "i9M3LXBrXku1lGgk"}, "descending": true, "iconURL": "YQaJ0Jjq6xZ68SBE", "leaderboardCode": "g1Sbh2AGW74b3Mjs", "monthly": {"resetDate": 25, "resetTime": "DP2Uy89bVKJNmYgm"}, "name": "3cx5YTJxiPqb0ug7", "seasonPeriod": 0, "startTime": "FSUaW4VHM0NFXNMS", "statCode": "VaCO2mu9ptYyeQmO", "weekly": {"resetDay": 2, "resetTime": "7sy1w4jX8sDbmnE3"}}'
"""

result, error = create_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
