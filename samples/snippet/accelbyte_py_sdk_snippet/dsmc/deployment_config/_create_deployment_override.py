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

Example: '{"buffer_count": 5, "buffer_percent": 17, "configuration": "8QyZtt5SDFUkM0jQ", "enable_region_overrides": false, "extendable_session": false, "game_version": "eRXgBnSIcgoAQMzH", "max_count": 82, "min_count": 82, "region_overrides": {"iT2aaFYvqWWGbBaQ": {"buffer_count": 17, "buffer_percent": 72, "max_count": 76, "min_count": 12, "name": "fSrmoPS8Kt0Fdt51", "unlimited": true, "use_buffer_percent": true}, "MwX0VZHCHhIMHeOz": {"buffer_count": 66, "buffer_percent": 23, "max_count": 22, "min_count": 80, "name": "2NpOVd0n9wOSOSpZ", "unlimited": false, "use_buffer_percent": true}, "C3BHzerOyFcMtIJZ": {"buffer_count": 15, "buffer_percent": 25, "max_count": 61, "min_count": 39, "name": "6rZUu1ONxSF2Ebd2", "unlimited": false, "use_buffer_percent": false}}, "regions": ["pE6gAGzeGdUJwvmS", "sERbssf6D1U9Z1r3", "ODLNkMz3VJg7RKn1"], "session_timeout": 30, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = create_deployment_override(
    body=body,
    deployment=deployment,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
