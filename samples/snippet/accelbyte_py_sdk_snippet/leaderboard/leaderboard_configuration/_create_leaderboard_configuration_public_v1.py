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

Example: '{"daily": {"resetTime": "QmuIrPUU26Ti85YF"}, "descending": true, "iconURL": "MdbuY1paOiWgQm0j", "leaderboardCode": "3RnCafCRxasC3hy4", "monthly": {"resetDate": 99, "resetTime": "TMBvXQyK7K2T6RLx"}, "name": "TKUlUXrSToz4UyG5", "seasonPeriod": 30, "startTime": "VKeUfM8zzzenae2P", "statCode": "7AxUcvuu76mpdJDm", "weekly": {"resetDay": 3, "resetTime": "suRsPSF7KsXOR3Xd"}}'
"""

result, error = create_leaderboard_configuration_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
