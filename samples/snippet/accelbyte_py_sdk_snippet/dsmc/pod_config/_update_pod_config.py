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

Example: '{"cpu_limit": 15, "mem_limit": 87, "name": "1JVayOUPZa9rJsyC", "params": "UeTXI77ftKeHx823"}'
"""

result, error = update_pod_config(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
