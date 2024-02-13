import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_override_region_override
from accelbyte_py_sdk.api.dsmc.models import ModelsCreateRegionOverrideRequest
from accelbyte_py_sdk.api.dsmc.models import ModelsDeploymentWithOverride
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsCreateRegionOverrideRequest
buffer_count: int
buffer_percent: int
max_count: int
min_count: int
unlimited: bool
use_buffer_percent: bool

Example: '{"buffer_count": 83, "buffer_percent": 50, "max_count": 30, "min_count": 0, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = create_override_region_override(
    body=body,
    deployment=deployment,
    region=region,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
