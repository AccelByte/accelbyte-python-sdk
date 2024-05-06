import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import shutdown_server
from accelbyte_py_sdk.api.dsmc.models import ModelsShutdownServerRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsShutdownServerRequest
kill_me: bool
pod_name: str

Example: '{"kill_me": false, "pod_name": "KxZ48SIKVxRj4cC5"}'
"""

result, error = shutdown_server(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
