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

Example: '{"daily": {"resetTime": "3fpGvQuHcL9OTzsb"}, "descending": true, "iconURL": "RSSNRlbFj7Zc633w", "leaderboardCode": "y2PmXGfJYa0jE7vm", "monthly": {"resetDate": 89, "resetTime": "pvh8ZtTM2LwC0kTe"}, "name": "03kEogn2Gvh1l5Qi", "seasonPeriod": 73, "startTime": "wc0tutyvmdvLGPeC", "statCode": "1c9qiLxXECxojwXo", "weekly": {"resetDay": 41, "resetTime": "J1XnvmPZL3jmoBmD"}}'
"""

result, error = create_leaderboard_configuration_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
