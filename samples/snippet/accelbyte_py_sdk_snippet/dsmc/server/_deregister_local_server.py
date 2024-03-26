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

Example: '{"name": "3LYCyfks1XEkceAD"}'
"""

result, error = deregister_local_server(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
