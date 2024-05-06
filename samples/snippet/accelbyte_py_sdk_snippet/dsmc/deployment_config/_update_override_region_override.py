import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import update_override_region_override
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

Example: '{"buffer_count": 77, "buffer_percent": 2, "max_count": 11, "min_count": 99, "unlimited": true, "use_buffer_percent": false}'
"""

result, error = update_override_region_override(
    body=body,
    deployment=deployment,
    region=region,
    version=version,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
