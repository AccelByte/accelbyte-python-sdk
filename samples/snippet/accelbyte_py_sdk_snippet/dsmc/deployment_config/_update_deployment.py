import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import update_deployment
from accelbyte_py_sdk.api.dsmc.models import ModelsDeploymentWithOverride
from accelbyte_py_sdk.api.dsmc.models import ModelsUpdateDeploymentRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsUpdateDeploymentRequest
allow_version_override: bool
buffer_count: int
buffer_percent: int
configuration: str
enable_region_overrides: bool
extendable_session: bool
game_version: str
max_count: int
min_count: int
regions: List[str]
session_timeout: int
unlimited: bool
use_buffer_percent: bool

Example: '{"allow_version_override": false, "buffer_count": 64, "buffer_percent": 68, "configuration": "CpiMJP0DiAfMG4ft", "enable_region_overrides": true, "extendable_session": false, "game_version": "wAhJF6uQb32t29mT", "max_count": 11, "min_count": 85, "regions": ["Y3sq8HsT72zO1aJG", "AwDNsDbghDAX69KE", "Y8pM8Z8OM8ruFEeg"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = update_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
