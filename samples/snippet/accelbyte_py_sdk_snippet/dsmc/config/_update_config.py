import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import update_config
from accelbyte_py_sdk.api.dsmc.models import ModelsDSMConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ModelsUpdateDSMConfigRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsUpdateDSMConfigRequest
claim_timeout: int
creation_timeout: int
default_version: str
port: int
protocol: str
providers: List[str]
session_timeout: int
unreachable_timeout: int

Example: '{"claim_timeout": 26, "creation_timeout": 30, "default_version": "umKkR71tj74sv7b7", "port": 69, "protocol": "xATSqkUPtsXJAbui", "providers": ["Yo3FhtTLf5K2AC2K", "RkffsZhRNwfsg140", "P8TKPEyEbMBxVsHJ"], "session_timeout": 16, "unreachable_timeout": 97}'
"""

result, error = update_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
