import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import get_my_match_tickets
from accelbyte_py_sdk.api.match2.models import ApiMatchTicketStatuses
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = get_my_match_tickets(
    limit=limit,
    match_pool=match_pool,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
