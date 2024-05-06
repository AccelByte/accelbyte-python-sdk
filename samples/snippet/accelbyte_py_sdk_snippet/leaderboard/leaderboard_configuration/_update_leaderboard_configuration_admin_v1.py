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

Example: '{"daily": {"resetTime": "ifRdZBXLjvHppnUe"}, "descending": true, "iconURL": "ViI7ukJrcCL2BW6v", "monthly": {"resetDate": 0, "resetTime": "b1od3iSX3xQG1VJV"}, "name": "BNLtNNt8MUlF2gfq", "seasonPeriod": 43, "startTime": "YRmnp9aBLvdKngya", "statCode": "I45lK1jYtV8kd3nP", "weekly": {"resetDay": 50, "resetTime": "8iA0IjTzU0Dt8DeN"}}'
"""

result, error = update_leaderboard_configuration_admin_v1(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
