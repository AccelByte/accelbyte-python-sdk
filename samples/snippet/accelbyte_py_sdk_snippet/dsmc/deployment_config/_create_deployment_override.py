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

Example: '{"buffer_count": 62, "buffer_percent": 80, "configuration": "nRjqeJZnmiO7XkPU", "enable_region_overrides": true, "extendable_session": false, "game_version": "gHdTC60GwNP7eOIk", "max_count": 79, "min_count": 85, "region_overrides": {"Rib1gdtA8cU7MNbD": {"buffer_count": 63, "buffer_percent": 17, "max_count": 98, "min_count": 47, "name": "WIOEvkIBQwuQwZOU", "unlimited": true, "use_buffer_percent": false}, "8cWHMPkYA5IPCUKf": {"buffer_count": 24, "buffer_percent": 45, "max_count": 17, "min_count": 12, "name": "5c9cOQN27ZsEFRhT", "unlimited": false, "use_buffer_percent": false}, "UUoDunyzZSj3CEb2": {"buffer_count": 75, "buffer_percent": 82, "max_count": 92, "min_count": 20, "name": "qXZzBGXW8QK7xOO6", "unlimited": false, "use_buffer_percent": false}}, "regions": ["au9VX9okkl2POYhs", "iDpC68s5pqWjaNbT", "MtzOcw7864cupYJZ"], "session_timeout": 75, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = create_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
