import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_config
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateDSMConfigRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsDSMConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateDSMConfigRequest
claim_timeout: int
creation_timeout: int
default_version: str
port: int
ports: Dict[str, int]
protocol: str
providers: List[str]
session_timeout: int
unreachable_timeout: int

Example: '{"claim_timeout": 63, "creation_timeout": 73, "default_version": "LVcbBOnjMdvQP2pi", "port": 83, "ports": {"omRMJJijtOXVTDyh": 27, "fDB6gHVIam8NFg8K": 63, "FJkjgkLE8tCoRupt": 19}, "protocol": "nAfKQON7mu1Ny9ZW", "providers": ["jNMSy09G61bnyVUY", "jtxDbuCxkY110JgQ", "CoD1paPX8sht8JDA"], "session_timeout": 33, "unreachable_timeout": 85}'
"""

result, error = create_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
