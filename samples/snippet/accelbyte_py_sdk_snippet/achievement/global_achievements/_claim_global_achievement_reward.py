import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.achievement import claim_global_achievement_reward
from accelbyte_py_sdk.api.achievement.models import ResponseError

result, error = claim_global_achievement_reward(
    achievement_code=achievement_code,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
