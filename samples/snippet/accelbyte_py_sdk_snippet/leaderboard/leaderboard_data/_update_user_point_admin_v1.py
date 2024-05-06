import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import update_user_point_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ModelsUpdateUserPointAdminV1Request
from accelbyte_py_sdk.api.leaderboard.models import ModelsUpdateUserPointAdminV1Response
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateUserPointAdminV1Request
inc: float
latest_value: float

Example: '{"inc": 0.9198379496816573, "latestValue": 0.22589381800733133}'
"""

result, error = update_user_point_admin_v1(
    body=body,
    leaderboard_code=leaderboard_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
