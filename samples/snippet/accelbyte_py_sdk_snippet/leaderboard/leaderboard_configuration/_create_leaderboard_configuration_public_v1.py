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

Example: '{"daily": {"resetTime": "trtUhhvIvJfxIjfs"}, "descending": false, "iconURL": "gpAUalSWTstDa5Fi", "leaderboardCode": "XDnZTwQQwTUf3aye", "monthly": {"resetDate": 73, "resetTime": "VQkvTy9sClf1d6T9"}, "name": "TtfLiaDNyQDsrmjU", "seasonPeriod": 53, "startTime": "7YDPdh4Xc1hlHxsn", "statCode": "NY421jhYcSoK5bVI", "weekly": {"resetDay": 19, "resetTime": "GDtl8vKWl3qgyJnx"}}'
"""

result, error = create_leaderboard_configuration_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
