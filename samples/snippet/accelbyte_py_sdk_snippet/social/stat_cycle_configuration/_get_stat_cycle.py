import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import get_stat_cycle
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import StatCycleInfo

result, error = get_stat_cycle(
    cycle_id=cycle_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
