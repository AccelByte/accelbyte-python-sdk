import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import set_user_leaderboard_visibility_status_v2
from accelbyte_py_sdk.api.leaderboard.models import ModelsGetUserVisibilityResponse
from accelbyte_py_sdk.api.leaderboard.models import ModelsSetUserVisibilityRequest
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

"""
body:
Definition: ModelsSetUserVisibilityRequest
visibility: bool

Example: '{"visibility": false}'
"""

result, error = set_user_leaderboard_visibility_status_v2(
    body=body,
    leaderboard_code=leaderboard_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
