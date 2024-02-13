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

Example: '{"claim_timeout": 82, "creation_timeout": 21, "default_version": "xQ1neSppqLstnhuy", "port": 3, "ports": {"Jq94OQlomHSyakgE": 42, "UZmrEkkK1bdvSbNM": 72, "DdsUGWZigpMbDQLb": 6}, "protocol": "wpnXTXDueleWElRZ", "providers": ["zup523sRkfwOVwJy", "BVtkYaa9z7mgRTtU", "PjDm0MqevBoURgcM"], "session_timeout": 90, "unreachable_timeout": 72}'
"""

result, error = create_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
