import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import update_deployment_override
from accelbyte_py_sdk.api.dsmc.models import ModelsDeploymentWithOverride
from accelbyte_py_sdk.api.dsmc.models import ModelsUpdateDeploymentOverrideRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsUpdateDeploymentOverrideRequest
buffer_count: int
buffer_percent: int
configuration: str
enable_region_overrides: bool
game_version: str
max_count: int
min_count: int
regions: List[str]
session_timeout: int
unlimited: bool
use_buffer_percent: bool

Example: '{"buffer_count": 44, "buffer_percent": 48, "configuration": "fhL1W7FS7psJt8Di", "enable_region_overrides": true, "game_version": "tu8N5baXz9C4ZVw7", "max_count": 67, "min_count": 73, "regions": ["CrgCURptDrcwADTc", "mS6vI9TY4M5LcXxB", "kVe0pnlpozdwkulx"], "session_timeout": 88, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = update_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
