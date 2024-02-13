import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import match_function_list
from accelbyte_py_sdk.api.match2.models import ApiListMatchFunctionsResponse
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = match_function_list(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
