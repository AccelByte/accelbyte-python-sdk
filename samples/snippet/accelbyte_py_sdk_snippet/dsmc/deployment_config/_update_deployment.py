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

Example: '{"allow_version_override": false, "buffer_count": 25, "buffer_percent": 78, "configuration": "JgQ64clSr4rBugOf", "enable_region_overrides": true, "extendable_session": true, "game_version": "IwzWg6YEiwIFzLxf", "max_count": 35, "min_count": 96, "regions": ["iKMvkFuaoQklHQOV", "3WIHh6BpzXKW7IUL", "Jk2Cku5cj4pVN79d"], "session_timeout": 72, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = update_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
