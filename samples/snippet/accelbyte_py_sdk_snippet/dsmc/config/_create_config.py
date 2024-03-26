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

Example: '{"claim_timeout": 52, "creation_timeout": 66, "default_version": "glgnSvXZDNo9qI4Y", "port": 73, "ports": {"1omMyEyww15avmiB": 0, "f7kcylMYjHo5ZngL": 36, "x2yt0i6KdRgpZ7SL": 84}, "protocol": "3CC3nS8tYGHtD7gt", "providers": ["A1NpJnbb85K5Qqzv", "ekaj6fB6QPgzKi6k", "yMjmVSGmxivqAYRj"], "session_timeout": 5, "unreachable_timeout": 99}'
"""

result, error = create_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
