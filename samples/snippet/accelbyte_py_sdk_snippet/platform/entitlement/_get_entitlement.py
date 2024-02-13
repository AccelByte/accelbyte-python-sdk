import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_entitlement
from accelbyte_py_sdk.api.platform.models import EntitlementInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_entitlement(
    entitlement_id=entitlement_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
