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

Example: '{"allTime": false, "cycleIds": ["9r6Fjna7GgfO0hV8", "jPVhBF3sbuhAPpGX", "zcO0pC3gI1fc29K5"], "descending": true, "description": "gwi9dXJgnVm6eAFm", "iconURL": "46Px6peLdtXGaLSz", "leaderboardCode": "Ffs0fVonKvFK4sVm", "name": "ihzRO2r7TDGaqGFK", "statCode": "5xQenxediy19cFdb"}'
"""

result, error = create_leaderboard_configuration_admin_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
