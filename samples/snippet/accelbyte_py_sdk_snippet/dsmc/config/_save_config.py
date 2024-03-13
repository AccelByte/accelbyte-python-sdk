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

Example: '{"claim_timeout": 55, "createdAt": "1981-08-31T00:00:00Z", "creation_timeout": 100, "default_version": "oPPWIe7BfPISCinT", "modifiedBy": "EY2RqCoMhnuMjRs5", "namespace": "M01M997YtyA4KmOm", "port": 99, "ports": {"m8Xx8DVFMOEM9SxF": 68, "2VqFmC4MaPvd3kyl": 21, "05iumD8RZcyfoQTm": 35}, "protocol": "LLPUj4tOuRNJdcZp", "providers": ["DEI2Rsivm7fGvv9P", "rzWg01rgKYvz30lz", "Ud2oJq8sYSYaK3PG"], "session_timeout": 59, "unreachable_timeout": 1, "updatedAt": "1976-02-01T00:00:00Z"}'
"""

result, error = save_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
