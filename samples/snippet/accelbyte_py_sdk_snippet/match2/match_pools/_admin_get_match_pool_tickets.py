import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import admin_get_match_pool_tickets
from accelbyte_py_sdk.api.match2.models import ApiListMatchPoolTicketsResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = admin_get_match_pool_tickets(
    pool=pool,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
