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

Example: '{"daily": {"resetTime": "nzXPwn9ajlzzsyzK"}, "descending": false, "iconURL": "FZSQ1pyG5X4wqfF3", "leaderboardCode": "DUPTvNcr9X4kv09t", "monthly": {"resetDate": 96, "resetTime": "dNpDOFhWjCNPU0Dy"}, "name": "KmmqwRPjmy0xAIaT", "seasonPeriod": 21, "startTime": "zEwQVJ43wZhxadoa", "statCode": "ROImrfh6u8ga5xUb", "weekly": {"resetDay": 88, "resetTime": "BhfwKmEM7d9NMriH"}}'
"""

result, error = create_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
