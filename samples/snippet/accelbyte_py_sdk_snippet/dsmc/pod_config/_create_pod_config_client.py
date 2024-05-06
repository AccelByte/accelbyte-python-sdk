import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_pod_config_client
from accelbyte_py_sdk.api.dsmc.models import ModelsCreatePodConfigRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsPodConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreatePodConfigRequest
cpu_limit: int
mem_limit: int
params: str

Example: '{"cpu_limit": 13, "mem_limit": 45, "params": "OEq3pcqYErBCqH0l"}'
"""

result, error = create_pod_config_client(
    body=body,
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
