import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import update_match_function
from accelbyte_py_sdk.api.match2.models import ApiMatchFunctionConfig
from accelbyte_py_sdk.api.match2.models import ApiMatchFunctionRequest
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiMatchFunctionRequest
match_function: str
service_app_name: str
url: str

Example: '{"match_function": "kSe3S0kHLa7K1Y1x", "serviceAppName": "UqOZGRwEDqUUhY50", "url": "mnSTtlNQlEw06zG3"}'
"""

result, error = update_match_function(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
