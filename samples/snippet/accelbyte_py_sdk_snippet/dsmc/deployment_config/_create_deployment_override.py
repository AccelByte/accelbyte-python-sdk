import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_deployment_override
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateDeploymentOverrideRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsDeploymentWithOverride
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateDeploymentOverrideRequest
buffer_count: int
buffer_percent: int
configuration: str
enable_region_overrides: bool
extendable_session: bool
game_version: str
max_count: int
min_count: int
region_overrides: Dict[str, ModelsPodCountConfigOverride]
regions: List[str]
session_timeout: int
unlimited: bool
use_buffer_percent: bool

Example: '{"buffer_count": 88, "buffer_percent": 16, "configuration": "cdwnTMOQWuZK3vVE", "enable_region_overrides": true, "extendable_session": false, "game_version": "4hdJ0fZyZJn1PBjz", "max_count": 91, "min_count": 49, "region_overrides": {"VQlO0GGIeekfFwjP": {"buffer_count": 47, "buffer_percent": 72, "max_count": 37, "min_count": 6, "name": "oJCUGh5V79cVgFHJ", "unlimited": false, "use_buffer_percent": false}, "rEA3a8YufXSlvumk": {"buffer_count": 7, "buffer_percent": 49, "max_count": 70, "min_count": 88, "name": "bPywigoGYq5hK8P3", "unlimited": false, "use_buffer_percent": true}, "gvBHEoNOHmaU6CHg": {"buffer_count": 56, "buffer_percent": 75, "max_count": 90, "min_count": 29, "name": "GZPG1ooDGpQEc7SQ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["lb5zO7Fct1SNbL2D", "m573uUzgQsjCXlqn", "mqc7jo5qs0dY2Ckh"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = create_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
