import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_active_entitlements_by_item_ids
from accelbyte_py_sdk.api.platform.models import EntitlementInfo

result, error = get_user_active_entitlements_by_item_ids(
    user_id=user_id,
    ids=ids,
    platform=platform,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
