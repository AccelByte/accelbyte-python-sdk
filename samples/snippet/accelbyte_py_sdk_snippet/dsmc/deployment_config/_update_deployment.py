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

Example: '{"allow_version_override": false, "buffer_count": 81, "buffer_percent": 64, "configuration": "7uTruL2GuFNA3vUA", "enable_region_overrides": false, "extendable_session": false, "game_version": "x7ynsAAGsQ7CqBjp", "max_count": 74, "min_count": 7, "regions": ["4hw23s0rJaxQkEPx", "lcF0tEgZWi4xSXWb", "m06gHT1xsMuSFE8e"], "session_timeout": 53, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = update_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
