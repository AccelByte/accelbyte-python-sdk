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

Example: '{"claim_timeout": 7, "creation_timeout": 43, "default_version": "j1IlYLCLSZGUJqTq", "port": 65, "ports": {"c0CfySmNpw26daf5": 40, "xc8YOJ2sDaC7BaJu": 4, "61pQflQZg8VL1loi": 24}, "protocol": "1CCtu4bRcpBijsoh", "providers": ["AMwJhNyzuOmP8kCn", "9kACGRuMdvk0Zae3", "TeEv9oshqOQNbstO"], "session_timeout": 19, "unreachable_timeout": 42}'
"""

result, error = create_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
