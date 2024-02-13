import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import delete_match_function
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = delete_match_function(
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
