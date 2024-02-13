import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_reward
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import RewardInfo

result, error = delete_reward(
    reward_id=reward_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
