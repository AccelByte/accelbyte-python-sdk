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

Example: '{"claim_timeout": 53, "createdAt": "1975-10-04T00:00:00Z", "creation_timeout": 98, "default_version": "isb9NFKllAXr0281", "modifiedBy": "pHfAeN3Abm5X11tO", "namespace": "7u6vjyRiOthKor6s", "port": 95, "ports": {"fm8mwxwkBlnLCPtL": 73, "yWN6wtwlNzp0HTbI": 82, "3Jd43K3qLGvEPORR": 17}, "protocol": "zmkAyl2vw8jPQg6f", "providers": ["8NPiqzq20eNHjjrS", "klCkAnWQOLaXEeiR", "ODVxLEUnxZBEU2cZ"], "session_timeout": 15, "unreachable_timeout": 23, "updatedAt": "1983-03-02T00:00:00Z"}'
"""

result, error = save_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
