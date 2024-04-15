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

Example: '{"daily": {"resetTime": "TvG22N15FDJajTOT"}, "descending": false, "iconURL": "kYstiAdmCHQMjyCm", "leaderboardCode": "YCQYdZQmfZwFSVzI", "monthly": {"resetDate": 18, "resetTime": "SiRMg2NITVC3IDVy"}, "name": "Y692fmvWshFwn8Iw", "seasonPeriod": 2, "startTime": "FcjpUqOOytxPVhjU", "statCode": "1RDV9sXW0JfHXCyl", "weekly": {"resetDay": 38, "resetTime": "FvyLVg7lZohyaStv"}}'
"""

result, error = create_leaderboard_configuration_public_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
