import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import update_leaderboard_configuration_admin_v3
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetLeaderboardConfigRespV3
from accelbyte_py_sdk.api.leaderboard.models import ModelsUpdateLeaderboardConfigReqV3
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateLeaderboardConfigReqV3
all_time: bool
cycle_ids: List[str]
descending: bool
description: str
icon_url: str
name: str

Example: '{"allTime": false, "cycleIds": ["NZoRro6GU33pDm29", "qcEMly9HIQlGIg95", "9p4pDCbjxQ91Livq"], "descending": false, "description": "YS75Ok5cEvOCElI2", "iconURL": "ueKzN2ZRQCocJPRx", "name": "9SQiM5XXKduYgQVg"}'
"""

result, error = update_leaderboard_configuration_admin_v3(
    body=body,
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
