import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import register_local_server
from accelbyte_py_sdk.api.dsmc.models import ModelsRegisterLocalServerRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsServer
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsRegisterLocalServerRequest
custom_attribute: str
ip: str
name: str
port: int

Example: '{"custom_attribute": "SV1VfFHbnPZHgUCj", "ip": "oGknxTYwGJXRjT0z", "name": "hz8NEfAle9NQVu2B", "port": 48}'
"""

result, error = register_local_server(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
