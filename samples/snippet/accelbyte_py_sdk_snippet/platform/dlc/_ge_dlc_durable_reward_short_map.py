import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import ge_dlc_durable_reward_short_map
from accelbyte_py_sdk.api.platform.models import DLCConfigRewardShortInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = ge_dlc_durable_reward_short_map(
    dlc_type=dlc_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
