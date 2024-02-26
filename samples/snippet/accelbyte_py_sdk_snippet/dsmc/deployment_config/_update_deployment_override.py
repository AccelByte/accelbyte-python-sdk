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

Example: '{"buffer_count": 41, "buffer_percent": 5, "configuration": "u3nSnw8987YNzTyB", "enable_region_overrides": false, "game_version": "GeJUwqPAKjYQt2Rd", "max_count": 92, "min_count": 3, "regions": ["PxZaU5GyZ6JXxHwK", "nlhLA0UXjXLcVjwM", "iKqSdCjoUVubV4ZF"], "session_timeout": 49, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = update_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
