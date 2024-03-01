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

Example: '{"match_function": "RWw1BPQpYyjdcKPL", "serviceAppName": "4DTTuKwdLSXtRbsx", "url": "4RhUu4LqmL941TO5"}'
"""

result, error = create_match_function(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)