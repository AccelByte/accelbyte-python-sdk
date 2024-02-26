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

Example: '{"buffer_count": 16, "buffer_percent": 35, "configuration": "wskFaVp2KoCOKoKa", "enable_region_overrides": false, "extendable_session": false, "game_version": "7bP2KsVI661CrYRH", "max_count": 12, "min_count": 13, "region_overrides": {"cSnp0SdRZw7akwJ3": {"buffer_count": 45, "buffer_percent": 21, "max_count": 41, "min_count": 82, "name": "Js4agScSU5VppDL3", "unlimited": true, "use_buffer_percent": false}, "2jj1iozgbqH1eGWh": {"buffer_count": 81, "buffer_percent": 16, "max_count": 71, "min_count": 66, "name": "KA3YOlLeUeguXCux", "unlimited": true, "use_buffer_percent": true}, "9qZhLDDFsIaBTc8M": {"buffer_count": 20, "buffer_percent": 89, "max_count": 69, "min_count": 9, "name": "BovMi9wRMMRnjUNZ", "unlimited": false, "use_buffer_percent": true}}, "regions": ["FDefv9T9wPSe68iv", "a0KvKZf2lYixAMIL", "vlPjfHySNBxA52vq"], "session_timeout": 97, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = create_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
