import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import update_root_region_override
from accelbyte_py_sdk.api.dsmc.models import ModelsDeploymentWithOverride
from accelbyte_py_sdk.api.dsmc.models import ModelsUpdateRegionOverrideRequest
from accelbyte_py_sdk.api.dsmc.models import ResponseError

"""
body:
Definition: ModelsUpdateRegionOverrideRequest
buffer_count: int
buffer_percent: int
max_count: int
min_count: int
unlimited: bool
use_buffer_percent: bool

Example: '{"buffer_count": 94, "buffer_percent": 45, "max_count": 54, "min_count": 94, "unlimited": false, "use_buffer_percent": false}'
"""

result, error = update_root_region_override(
    body=body,
    deployment=deployment,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
