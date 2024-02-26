import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import update_pod_config
from accelbyte_py_sdk.api.dsmc.models import ModelsPodConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ModelsUpdatePodConfigRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsUpdatePodConfigRequest
cpu_limit: int
mem_limit: int
name: str
params: str

Example: '{"cpu_limit": 62, "mem_limit": 59, "name": "5t8lZSTFlCPgm9Vz", "params": "cBoyp2Zn2s60Zx9V"}'
"""

result, error = update_pod_config(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
