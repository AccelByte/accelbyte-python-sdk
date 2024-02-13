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

Example: '{"daily": {"resetTime": "FnD7uc2yoVisxVsW"}, "descending": false, "iconURL": "7csdChV4k3ICC2wO", "leaderboardCode": "beY1amvT9nlQVkM9", "monthly": {"resetDate": 76, "resetTime": "GkU4XCohBJSyZuYO"}, "name": "xmDVxFFNYq79Umna", "seasonPeriod": 48, "startTime": "cKDNQHendSmorfOP", "statCode": "JH4ysOsaucMmtjkt", "weekly": {"resetDay": 29, "resetTime": "xpNeWA3zRw3QrIKk"}}'
"""

result, error = create_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
