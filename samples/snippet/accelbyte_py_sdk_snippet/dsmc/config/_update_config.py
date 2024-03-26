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

Example: '{"claim_timeout": 9, "creation_timeout": 1, "default_version": "SabAIz4Vj1BaJPGQ", "port": 5, "protocol": "cC3ILNIPRJTuUcUf", "providers": ["zXW6mLfd6zywXTry", "isGu5sEmehzZWyRH", "gTs3xXrjvXMskoFT"], "session_timeout": 44, "unreachable_timeout": 43}'
"""

result, error = update_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
