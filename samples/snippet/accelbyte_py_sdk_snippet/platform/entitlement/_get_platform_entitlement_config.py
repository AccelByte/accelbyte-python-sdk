import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_platform_entitlement_config
from accelbyte_py_sdk.api.platform.models import EntitlementPlatformConfigInfo

result, error = get_platform_entitlement_config(
    platform=platform,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
