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

Example: '{"buffer_count": 67, "buffer_percent": 8, "configuration": "tKDAsuUILv9bkIr5", "enable_region_overrides": true, "game_version": "2P2zdpIFL6g6Zvb7", "max_count": 95, "min_count": 14, "regions": ["1F5A1gTcUBkD8kMt", "trRb4N5z6aiM1LmS", "emU7cIgETurqbchM"], "session_timeout": 71, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = update_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
