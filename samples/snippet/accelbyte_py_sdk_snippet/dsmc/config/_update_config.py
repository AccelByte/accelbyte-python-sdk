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

Example: '{"claim_timeout": 66, "creation_timeout": 19, "default_version": "jpfrnvNVW6OZ78p1", "port": 9, "protocol": "bW4zrry6RibiJ3Rr", "providers": ["6bZrN57GP6jjREAU", "JrRmKipQ5M7SYd1X", "j0mmtoDAjvhTe54K"], "session_timeout": 50, "unreachable_timeout": 81}'
"""

result, error = update_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
