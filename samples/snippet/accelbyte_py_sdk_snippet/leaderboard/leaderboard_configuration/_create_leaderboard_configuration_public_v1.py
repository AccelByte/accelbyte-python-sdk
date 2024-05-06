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

Example: '{"daily": {"resetTime": "vSQxST7hSzM07INT"}, "descending": true, "iconURL": "ReKbqxxeYCOMi72x", "leaderboardCode": "zcvg0JLhtDCuzlxO", "monthly": {"resetDate": 98, "resetTime": "oWYKEsxgmTBiTAYo"}, "name": "LznlbSTRFyrPf449", "seasonPeriod": 100, "startTime": "YsC6J53Ttl5MYL7j", "statCode": "3CX5qkiIxkfsYQbj", "weekly": {"resetDay": 31, "resetTime": "25ImABs0vkKxRiqv"}}'
"""

result, error = create_leaderboard_configuration_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
