import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import server_heartbeat
from accelbyte_py_sdk.api.dsmc.models import ModelsDSHeartbeatRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsDSHeartbeatRequest
pod_name: str

Example: '{"podName": "nsgzPsHUnhchBbI0"}'
"""

result, error = server_heartbeat(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
