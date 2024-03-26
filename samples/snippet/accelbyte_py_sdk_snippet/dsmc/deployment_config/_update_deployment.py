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

Example: '{"allow_version_override": false, "buffer_count": 63, "buffer_percent": 85, "configuration": "i5GFCT4xSXNdEfQd", "enable_region_overrides": false, "extendable_session": true, "game_version": "WcIIf53V6A8JKhJs", "max_count": 60, "min_count": 53, "regions": ["ysypviessJrKfut0", "jvTBj8XZUJ8rEyMA", "7eBuzyUvEHd2R9S9"], "session_timeout": 90, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = update_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
