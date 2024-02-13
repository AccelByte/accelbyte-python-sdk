import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import get_match_pool_metric
from accelbyte_py_sdk.api.matchmaking.models import ModelsTicketMetricResultRecord
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

result, error = get_match_pool_metric(
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
