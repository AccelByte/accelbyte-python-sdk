import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_entitlement_config_info
from accelbyte_py_sdk.api.platform.models import EntitlementConfigInfo

result, error = get_entitlement_config_info(
    without_cache=without_cache,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
