import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import add_port
from accelbyte_py_sdk.api.dsmc.models import ModelsCreatePortRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsDSMConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreatePortRequest
port: int

Example: '{"port": 57}'
"""

result, error = add_port(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
