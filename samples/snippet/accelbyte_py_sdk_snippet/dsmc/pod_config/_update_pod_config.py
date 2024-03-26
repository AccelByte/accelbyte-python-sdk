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

Example: '{"cpu_limit": 55, "mem_limit": 49, "name": "528fd1bdNQjsrtyF", "params": "cWOY59TiAtytKfvL"}'
"""

result, error = update_pod_config(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
