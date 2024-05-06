import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import create_leaderboard_configuration_admin_v3
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardConfigRespV3
from accelbyte_py_sdk.api.leaderboard.models import ModelsLeaderboardConfigReqV3
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsLeaderboardConfigReqV3
all_time: bool
cycle_ids: List[str]
descending: bool
description: str
icon_url: str
leaderboard_code: str
name: str
stat_code: str

Example: '{"allTime": false, "cycleIds": ["UOFtH4DVpxQ7Yq2w", "CwmXxvQXwjZRUg0N", "rQKQOGkWLplZ7I9F"], "descending": false, "description": "s0jXMopfrWRVG6GP", "iconURL": "gwFzSXqEqI1Q8o9f", "leaderboardCode": "A61VhoIJq3dsRnuC", "name": "DOBv0kgKqpcWqfM5", "statCode": "raW734wwOBEZ2rLO"}'
"""

result, error = create_leaderboard_configuration_admin_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
