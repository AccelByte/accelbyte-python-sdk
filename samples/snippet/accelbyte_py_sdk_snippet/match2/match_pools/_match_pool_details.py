import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import match_pool_details
from accelbyte_py_sdk.api.match2.models import ApiMatchPool
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = match_pool_details(
    pool=pool,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
