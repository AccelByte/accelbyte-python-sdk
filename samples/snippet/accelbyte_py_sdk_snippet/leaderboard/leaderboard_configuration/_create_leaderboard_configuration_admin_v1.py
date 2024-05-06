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

Example: '{"daily": {"resetTime": "MPHjGmNqgkSsKS2V"}, "descending": false, "iconURL": "z1enVaZiOn2uHZ2e", "leaderboardCode": "J8477DYS1wPesL5Z", "monthly": {"resetDate": 52, "resetTime": "EffFfPaHE428sDNP"}, "name": "gKQ2z3hkFxAE09zF", "seasonPeriod": 60, "startTime": "Ew4IPHL1vRwcFY2k", "statCode": "EcdM7TzEfQ2kmIk8", "weekly": {"resetDay": 47, "resetTime": "UTSK1Zcq478RliVy"}}'
"""

result, error = create_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
