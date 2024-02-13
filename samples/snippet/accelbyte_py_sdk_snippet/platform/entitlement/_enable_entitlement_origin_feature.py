import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import enable_entitlement_origin_feature
from accelbyte_py_sdk.api.platform.models import EntitlementConfigInfo

result, error = enable_entitlement_origin_feature(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
