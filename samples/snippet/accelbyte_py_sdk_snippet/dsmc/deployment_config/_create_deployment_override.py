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

Example: '{"buffer_count": 92, "buffer_percent": 78, "configuration": "jFfwpOYASqsIgTMa", "enable_region_overrides": true, "extendable_session": false, "game_version": "f6z1xmjatKuLkBwY", "max_count": 5, "min_count": 67, "region_overrides": {"cHTvpTKCRTuvgbYG": {"buffer_count": 57, "buffer_percent": 55, "max_count": 21, "min_count": 66, "name": "RfodEPbgudLQSA14", "unlimited": false, "use_buffer_percent": true}, "3sFJ721nDO9nJtVX": {"buffer_count": 49, "buffer_percent": 65, "max_count": 89, "min_count": 17, "name": "qVHqJIK4CDh9njlC", "unlimited": true, "use_buffer_percent": true}, "VcUP8AYcKw8pQpTj": {"buffer_count": 23, "buffer_percent": 40, "max_count": 7, "min_count": 98, "name": "njvPIu6NPDObEEBV", "unlimited": false, "use_buffer_percent": false}}, "regions": ["OB8k3Je64yRnNLtU", "SBABnzfgdTfW0Nk4", "qTzz2tnkgzWlrpLv"], "session_timeout": 7, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = create_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
