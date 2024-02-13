import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import create_leaderboard_configuration_public_v1
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

Example: '{"daily": {"resetTime": "RLZXgOMlGkKS4jYk"}, "descending": true, "iconURL": "pCF3PT2pyVJ9MFKM", "leaderboardCode": "R1eQWBSJFa9kUdzy", "monthly": {"resetDate": 1, "resetTime": "BA367t9Rxl62XB2y"}, "name": "aPh0MP4mIK4xp4GP", "seasonPeriod": 1, "startTime": "DH9PJmatQufVF7Yu", "statCode": "n1xcEsI193aXkN4S", "weekly": {"resetDay": 78, "resetTime": "8SQmF8yYXx200GtI"}}'
"""

result, error = create_leaderboard_configuration_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
