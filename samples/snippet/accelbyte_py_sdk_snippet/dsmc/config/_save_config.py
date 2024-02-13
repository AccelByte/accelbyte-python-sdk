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

Example: '{"claim_timeout": 89, "createdAt": "1993-02-03T00:00:00Z", "creation_timeout": 6, "default_version": "fBF7zBz0W9uJo4WK", "modifiedBy": "kvgbTanBlbVKSWIb", "namespace": "d9NbH0AihqnryZiI", "port": 28, "ports": {"qL8jQragAHnCeWoY": 74, "oYSBu6lu5UMNlJtL": 89, "ub2EJZCgoLa2ZNcs": 33}, "protocol": "EX68H4gvk2bp1fC4", "providers": ["PXEmXMq0kTRzqal5", "tFQHDO5t137NJUc8", "kOYsrHlelQ2mHUtH"], "session_timeout": 92, "unreachable_timeout": 35, "updatedAt": "1981-04-17T00:00:00Z"}'
"""

result, error = save_config(
    body=body,
    x_additional_headers=x_additional_headers,
)
