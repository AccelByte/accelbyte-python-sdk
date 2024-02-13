import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import admin_anonymize_user_achievement
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = admin_anonymize_user_achievement(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
