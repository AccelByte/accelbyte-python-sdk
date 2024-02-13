import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import create_root_region_override
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

Example: '{"buffer_count": 54, "buffer_percent": 13, "max_count": 5, "min_count": 10, "unlimited": true, "use_buffer_percent": true}'
"""

result, error = create_root_region_override(
    body=body,
    deployment=deployment,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
