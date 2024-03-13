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

Example: '{"daily": {"resetTime": "kGeNyRO65mai5vsQ"}, "descending": true, "iconURL": "U56FZgpqepJOmR7a", "monthly": {"resetDate": 30, "resetTime": "8300h5BAlztvIno3"}, "name": "iChQd6cKGBh1xkfP", "seasonPeriod": 28, "startTime": "IcoLzYeU0vEdFrGF", "statCode": "D3ytfolINi6vZxyK", "weekly": {"resetDay": 19, "resetTime": "G1P3pJKlUQ0lWJYm"}}'
"""

result, error = update_leaderboard_configuration_admin_v1(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
