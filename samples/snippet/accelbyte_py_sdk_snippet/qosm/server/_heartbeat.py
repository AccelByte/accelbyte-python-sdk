import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.qosm import heartbeat
from accelbyte_py_sdk.api.qosm.models import ModelsHeartbeatRequest
from accelbyte_py_sdk.api.qosm.models import ResponseError

"""
body:
Definition: ModelsHeartbeatRequest
ip: str
port: int
region: str

Example: '{"ip": "80ConpoAs3a8AU8h", "port": 55, "region": "IfQUCNqixC6Yqx2h"}'
"""

result, error = heartbeat(
    body=body,
    x_additional_headers=x_additional_headers,
)
