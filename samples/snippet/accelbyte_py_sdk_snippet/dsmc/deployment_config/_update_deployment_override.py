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

Example: '{"buffer_count": 23, "buffer_percent": 55, "configuration": "8zLHQ3ptTEzEdKUH", "enable_region_overrides": false, "game_version": "tqZe0MHsaQ8l2bv8", "max_count": 93, "min_count": 46, "regions": ["q8hyOkOBLqeP6R16", "ANJ5PLQS4fLEmfob", "vyG76Xtf4gOYRiC8"], "session_timeout": 2, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = update_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
