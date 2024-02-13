import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_reward_by_code
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import RewardInfo

result, error = get_reward_by_code(
    reward_code=reward_code,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
