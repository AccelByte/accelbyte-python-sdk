import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import update_leaderboard_configuration_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardConfigResp
from accelbyte_py_sdk.api.leaderboard.models import ModelsUpdateLeaderboardConfigReq
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateLeaderboardConfigReq
daily: ModelsDailyConfig
Definition: ModelsDailyConfig
    reset_time: str
descending: bool
icon_url: str
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

Example: '{"daily": {"resetTime": "c9hbaCD31rj9g0tq"}, "descending": false, "iconURL": "4bO9T0odYQNM8gS6", "monthly": {"resetDate": 35, "resetTime": "6x8MmfbwM3IAbCwA"}, "name": "Ur25uGHe5jWaFvRl", "seasonPeriod": 22, "startTime": "Qt1QJ2EwvWcjztnb", "statCode": "TF8LE7OXBnWRiI4P", "weekly": {"resetDay": 46, "resetTime": "mVruw83tiZu9BWiN"}}'
"""

result, error = update_leaderboard_configuration_admin_v1(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
