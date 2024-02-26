import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import deregister_local_server
from accelbyte_py_sdk.api.dsmc.models import ModelsDeregisterLocalServerRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsDeregisterLocalServerRequest
name: str

Example: '{"name": "TwNmP4IxQ1u1Gpc0"}'
"""

result, error = deregister_local_server(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
