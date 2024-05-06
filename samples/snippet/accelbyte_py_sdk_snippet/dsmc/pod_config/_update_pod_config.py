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

Example: '{"cpu_limit": 44, "mem_limit": 9, "name": "OxiaIQ6lx0l1z5nQ", "params": "YqzXZKi1UZyBGzM4"}'
"""

result, error = update_pod_config(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
