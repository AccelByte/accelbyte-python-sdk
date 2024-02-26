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

Example: '{"claim_timeout": 61, "creation_timeout": 84, "default_version": "agGbbwLBmj34zHx4", "port": 99, "protocol": "7yzuwy2XqTNTisRP", "providers": ["9O8jWdcTnkR8osuK", "bHZVMqtwOl89OVFI", "9OVieFgDAYnscqdx"], "session_timeout": 61, "unreachable_timeout": 40}'
"""

result, error = update_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
