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

Example: '{"daily": {"resetTime": "UfnNxzt2sdT6LqH0"}, "descending": false, "iconURL": "7ufuMbgnDxELRQ1o", "leaderboardCode": "1Z2FQeQwvSdYdOq5", "monthly": {"resetDate": 60, "resetTime": "Vy0LgI7DkhUaDRZl"}, "name": "HlnIDlunrvM9OJkh", "seasonPeriod": 23, "startTime": "jcpuLd2PsZTZ2Jxb", "statCode": "SIzZKke1ZAvjPrd9", "weekly": {"resetDay": 86, "resetTime": "F2aDcxiONhSDizQy"}}'
"""

result, error = create_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
