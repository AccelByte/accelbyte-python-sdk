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

Example: '{"buffer_count": 39, "buffer_percent": 45, "configuration": "TqQy7IxnBpAVAe5C", "enable_region_overrides": true, "extendable_session": true, "game_version": "11WD6pOmpL9YBbIS", "max_count": 25, "min_count": 94, "region_overrides": {"wUJXC2kT5Bdp7Wzu": {"buffer_count": 44, "buffer_percent": 3, "max_count": 82, "min_count": 82, "name": "Al5AHnldnHeXdw5c", "unlimited": true, "use_buffer_percent": false}, "RrCik6c0ZjiQhQia": {"buffer_count": 10, "buffer_percent": 82, "max_count": 6, "min_count": 79, "name": "oiBUL3YvHAja5REL", "unlimited": false, "use_buffer_percent": true}, "0cGGaqROqOgoz2aB": {"buffer_count": 42, "buffer_percent": 99, "max_count": 88, "min_count": 2, "name": "AiAJKES3YID2MA49", "unlimited": false, "use_buffer_percent": true}}, "regions": ["lU2g2fp7y1bWGXIR", "FeV42Kf5ess5oVq3", "7hP1COxGupg3BWFv"], "session_timeout": 79, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = create_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
