import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import match_pool_metric
from accelbyte_py_sdk.api.match2.models import ApiTicketMetricResultRecord
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = match_pool_metric(
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
