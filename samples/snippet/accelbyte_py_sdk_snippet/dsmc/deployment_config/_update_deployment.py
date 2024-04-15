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

Example: '{"allow_version_override": false, "buffer_count": 83, "buffer_percent": 82, "configuration": "oMqiAdyDvmKSHfnO", "enable_region_overrides": true, "extendable_session": false, "game_version": "nWKZ7B0Mb3GxsGy7", "max_count": 17, "min_count": 80, "regions": ["c3JpZhq0pwohMciy", "EdclYozrMECUlkei", "JOaiPGlFIx2tUROd"], "session_timeout": 61, "unlimited": true, "use_buffer_percent": true}'
"""

result, error = update_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
