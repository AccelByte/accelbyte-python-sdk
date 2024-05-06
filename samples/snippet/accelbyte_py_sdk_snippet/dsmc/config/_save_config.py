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

Example: '{"claim_timeout": 57, "createdAt": "1976-03-04T00:00:00Z", "creation_timeout": 91, "default_version": "7VmMQcnE6SBSDL6N", "modifiedBy": "2wE8lymzlznph6EZ", "namespace": "DkvWRD8OnmYUfKCV", "port": 10, "ports": {"DN03iSu7bUvzJBr7": 57, "MHiJ7fVEqJGPhRT8": 11, "XLOESnGZcQI2qsuT": 89}, "protocol": "w1b1msXBPy0PJMsi", "providers": ["YBXUim9oi7sdLZ0w", "3K1TMAs6HCd0pMu8", "vyctGDv74NT8ilbx"], "session_timeout": 22, "unreachable_timeout": 55, "updatedAt": "1981-04-04T00:00:00Z"}'
"""

result, error = save_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
