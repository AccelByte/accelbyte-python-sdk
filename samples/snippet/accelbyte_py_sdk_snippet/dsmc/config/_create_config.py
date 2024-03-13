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

Example: '{"claim_timeout": 36, "creation_timeout": 65, "default_version": "OnsEXCQh4SIBprNU", "port": 24, "ports": {"GaO4FKbIvCNtgg2T": 2, "cGbBTTXUNxaIHzS1": 34, "3B7jn2LuewBukhlU": 46}, "protocol": "KwJDdOft4gvkmiSJ", "providers": ["xkJMKzjr0ImDwwez", "8hGwmsaCvAXyFFEn", "fb4zzNZnBBtiBpsW"], "session_timeout": 54, "unreachable_timeout": 69}'
"""

result, error = create_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
