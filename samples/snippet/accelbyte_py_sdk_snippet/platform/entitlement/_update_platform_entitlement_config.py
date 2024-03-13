import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_platform_entitlement_config
from accelbyte_py_sdk.api.platform.models import EntitlementPlatformConfigInfo
from accelbyte_py_sdk.api.platform.models import EntitlementPlatformConfigUpdate
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: EntitlementPlatformConfigUpdate
allowed_platform_origins: List[str]

Example: '{"allowedPlatformOrigins": ["Oculus", "Playstation", "Steam"]}'
"""

result, error = update_platform_entitlement_config(
    platform=platform,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
