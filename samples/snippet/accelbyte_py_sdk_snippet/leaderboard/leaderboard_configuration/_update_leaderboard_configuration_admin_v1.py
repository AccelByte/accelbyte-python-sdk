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

Example: '{"daily": {"resetTime": "yn94vGc6oL5cYYyz"}, "descending": false, "iconURL": "8QSxxBjWWHoh3i5u", "monthly": {"resetDate": 13, "resetTime": "49s4d4lbHDnCUpef"}, "name": "RGyM8aMHRMSs757q", "seasonPeriod": 71, "startTime": "ZmzZhcAjNj4vJwdF", "statCode": "IfpxhD0SoeTmmua4", "weekly": {"resetDay": 26, "resetTime": "WehlcqpzeZf6C6PN"}}'
"""

result, error = update_leaderboard_configuration_admin_v1(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
