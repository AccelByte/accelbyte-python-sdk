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

Example: '{"buffer_count": 45, "buffer_percent": 67, "configuration": "QcqzERIQzC6lSCnV", "enable_region_overrides": true, "game_version": "ZYcxyCGTLoS8K90O", "max_count": 61, "min_count": 92, "regions": ["bnog20rgJyhonepW", "SG1L5iBICH2RhOt1", "otFThGRRVvTf7jYE"], "session_timeout": 31, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = update_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
