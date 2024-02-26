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

Example: '{"daily": {"resetTime": "wybXpjCSkSldYvEi"}, "descending": false, "iconURL": "oNB7mkaPI2EqAZyT", "leaderboardCode": "glAE7xPpHPj8gRBX", "monthly": {"resetDate": 52, "resetTime": "kSfcuhgBe1WxtT4R"}, "name": "s0rii1sknml45z86", "seasonPeriod": 27, "startTime": "ujwqhVAZQlxJKhzB", "statCode": "92SaDob2rYXqiOgt", "weekly": {"resetDay": 42, "resetTime": "WutWT3vF473zCRPe"}}'
"""

result, error = create_leaderboard_configuration_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
