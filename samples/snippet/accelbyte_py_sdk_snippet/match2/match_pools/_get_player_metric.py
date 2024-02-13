import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import get_player_metric
from accelbyte_py_sdk.api.match2.models import ApiPlayerMetricRecord
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = get_player_metric(
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
