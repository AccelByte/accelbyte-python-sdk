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

Example: '{"claim_timeout": 61, "creation_timeout": 57, "default_version": "CmmSR6U7Igh1qS15", "port": 4, "ports": {"4X7SRHQqEb9iQ8at": 88, "V840lYPd7uoqNxGf": 89, "L1kNttCg6TNWG1Mr": 75}, "protocol": "59NdCNRQtFBgN785", "providers": ["0jOJTGJRCdzPmimQ", "meIHcjlo4tNCbSKv", "rIYY1txMTkF00Nlt"], "session_timeout": 77, "unreachable_timeout": 40}'
"""

result, error = create_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
