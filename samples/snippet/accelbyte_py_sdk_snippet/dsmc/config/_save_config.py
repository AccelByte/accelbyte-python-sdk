import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import save_config
from accelbyte_py_sdk.api.dsmc.models import ModelsDSMConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsDSMConfigRecord
claim_timeout: int
created_at: str
creation_timeout: int
default_version: str
modified_by: str
namespace: str
port: int
ports: Dict[str, int]
protocol: str
providers: List[str]
session_timeout: int
unreachable_timeout: int
updated_at: str

Example: '{"claim_timeout": 33, "createdAt": "1983-03-09T00:00:00Z", "creation_timeout": 5, "default_version": "D9fIvuqXHea7hR0a", "modifiedBy": "KecbmN1itMHH4OfC", "namespace": "slNKcW6EA7nJAv1n", "port": 28, "ports": {"rFoP3raM7mzFGEC6": 45, "UGoJ5CeS1EFJC2Zv": 73, "Ey8vS0tEedk5r7zr": 19}, "protocol": "65xLm2Asqwc81jZX", "providers": ["LLcNNZSntOZodINj", "gowVIOFSopJsuLbc", "2TIGkjv4kuasEePJ"], "session_timeout": 64, "unreachable_timeout": 19, "updatedAt": "1977-08-03T00:00:00Z"}'
"""

result, error = save_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
