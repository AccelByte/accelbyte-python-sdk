import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.leaderboard import admin_anonymize_user_leaderboard_admin_v1
from accelbyte_py_sdk.api.leaderboard.models import ResponseErrorResponse

result, error = admin_anonymize_user_leaderboard_admin_v1(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
