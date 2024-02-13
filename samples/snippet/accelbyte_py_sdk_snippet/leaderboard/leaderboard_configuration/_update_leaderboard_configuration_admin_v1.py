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

Example: '{"daily": {"resetTime": "I8fjZlm018JNImel"}, "descending": false, "iconURL": "XZQl9fJ6727Y5LUR", "monthly": {"resetDate": 38, "resetTime": "slMGyDxBxidxPQFr"}, "name": "kC9eDudLS1RCrncA", "seasonPeriod": 87, "startTime": "zE4bYMGXzRfD1arP", "statCode": "8p4X9bs2sAkttvEn", "weekly": {"resetDay": 11, "resetTime": "oU7NMYxNbswBaGe6"}}'
"""

result, error = update_leaderboard_configuration_admin_v1(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
