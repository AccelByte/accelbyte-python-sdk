import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_entitlement_by_item_id
from accelbyte_py_sdk.api.platform.models import EntitlementInfo
from accelbyte_py_sdk.api.platform.models import ErrorEntity

result, error = get_user_entitlement_by_item_id(
    user_id=user_id,
    item_id=item_id,
    active_only=active_only,
    entitlement_clazz=entitlement_clazz,
    platform=platform,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
