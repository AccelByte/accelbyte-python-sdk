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

Example: '{"allow_version_override": true, "buffer_count": 93, "buffer_percent": 48, "configuration": "LHX21Eb3tpCT6gYv", "enable_region_overrides": false, "extendable_session": true, "game_version": "ItD7R7VIRCOPLPBW", "max_count": 64, "min_count": 59, "regions": ["KmDQkAAHXWEcP3V0", "b9CSTYoErEbUjcvK", "RrX9YToHHxHcm5EQ"], "session_timeout": 38, "unlimited": false, "use_buffer_percent": true}'
"""

result, error = update_deployment(
    body=body,
    deployment=deployment,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
