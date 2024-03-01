import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_pod_config
from accelbyte_py_sdk.api.dsmc.models import ModelsCreatePodConfigRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsPodConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreatePodConfigRequest
cpu_limit: int
mem_limit: int
params: str

Example: '{"cpu_limit": 39, "mem_limit": 30, "params": "h1Cm0GV9VuuTXep6"}'
"""

result, error = create_pod_config(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)