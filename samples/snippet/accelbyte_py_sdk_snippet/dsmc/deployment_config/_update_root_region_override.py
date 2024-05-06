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

Example: '{"buffer_count": 51, "buffer_percent": 78, "max_count": 19, "min_count": 45, "unlimited": true, "use_buffer_percent": true}'
"""

result, error = update_root_region_override(
    body=body,
    deployment=deployment,
    region=region,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
