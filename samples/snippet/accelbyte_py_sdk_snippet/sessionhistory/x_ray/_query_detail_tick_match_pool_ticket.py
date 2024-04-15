import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import query_detail_tick_match_pool_ticket
from accelbyte_py_sdk.api.sessionhistory.models import (
    ApimodelsXRayMatchPoolPodTickTicketResponse,
)
from accelbyte_py_sdk.api.sessionhistory.models import ResponseError

result, error = query_detail_tick_match_pool_ticket(
    pod_name=pod_name,
    pool_name=pool_name,
    tick_id=tick_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
