import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import match_pool_list
from accelbyte_py_sdk.api.match2.models import ApiListMatchPoolsResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = match_pool_list(
    limit=limit,
    name=name,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
