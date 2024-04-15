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

Example: '{"claim_timeout": 61, "creation_timeout": 30, "default_version": "Htf0hTjEHy26kuzH", "port": 34, "protocol": "Cqq1qaHwDi3KSjay", "providers": ["n4SScNAVpJXFtqJf", "tD8v6JvLAHI4s2F3", "QT17ObQrGu1oA5Qh"], "session_timeout": 35, "unreachable_timeout": 17}'
"""

result, error = update_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
