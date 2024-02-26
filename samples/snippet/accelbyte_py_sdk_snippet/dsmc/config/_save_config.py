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

Example: '{"claim_timeout": 51, "createdAt": "1972-08-07T00:00:00Z", "creation_timeout": 55, "default_version": "QswkCxEspe8vdZsW", "modifiedBy": "wqDxbFsYOCLR8hdy", "namespace": "FZjoAmdVDrjboWMO", "port": 86, "ports": {"h0K4oSjKJB24eaTY": 41, "EK9sFroI5a7gg7D2": 77, "YBl4c5BfmCkJj1kz": 98}, "protocol": "ucGLD2AlD41IfMuG", "providers": ["zPrXeDQQSc6ZsYhH", "v8ZMa1iOnTT2PRiG", "PXbfIFbDtPVPxCWj"], "session_timeout": 74, "unreachable_timeout": 14, "updatedAt": "1997-09-19T00:00:00Z"}'
"""

result, error = save_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
