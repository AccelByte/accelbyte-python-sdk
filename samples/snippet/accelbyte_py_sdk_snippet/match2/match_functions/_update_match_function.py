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

Example: '{"match_function": "lEsVJ3uxFah7kkrr", "serviceAppName": "0pubbz1saDEXhUTS", "url": "ar9q0lAfXdwJrf5q"}'
"""

result, error = update_match_function(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
