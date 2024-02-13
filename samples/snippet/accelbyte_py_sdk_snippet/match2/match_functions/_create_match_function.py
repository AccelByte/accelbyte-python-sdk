import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import create_match_function
from accelbyte_py_sdk.api.match2.models import ApiMatchFunctionRequest
from accelbyte_py_sdk.api.match2.models import ResponseError

"""
body:
Definition: ApiMatchFunctionRequest
match_function: str
service_app_name: str
url: str

Example: '{"match_function": "lHHViN5nRyMtuZqg", "serviceAppName": "Th0VQg6GMZ4KiyXQ", "url": "4LVFGbmT9xdWJ9sL"}'
"""

result, error = create_match_function(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
