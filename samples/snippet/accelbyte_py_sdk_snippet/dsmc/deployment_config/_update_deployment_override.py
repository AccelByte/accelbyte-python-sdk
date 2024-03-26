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

Example: '{"buffer_count": 28, "buffer_percent": 88, "configuration": "jmLalSR5XQMxAh4E", "enable_region_overrides": true, "game_version": "4cFNd388XZPTbDCB", "max_count": 68, "min_count": 67, "regions": ["6kFrQCuJleMEiQcB", "GWk4qGKxI3ULGlSJ", "nSzPp20jYfsAVMQn"], "session_timeout": 19, "unlimited": true, "use_buffer_percent": true}'
"""

result, error = update_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
