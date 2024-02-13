import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import delete_leaderboard_configuration_admin_v3
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = delete_leaderboard_configuration_admin_v3(
    leaderboard_code=leaderboard_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
