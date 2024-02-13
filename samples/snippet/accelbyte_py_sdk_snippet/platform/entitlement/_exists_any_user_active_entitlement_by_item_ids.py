import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import exists_any_user_active_entitlement_by_item_ids
from accelbyte_py_sdk.api.platform.models import Ownership

result, error = exists_any_user_active_entitlement_by_item_ids(
    user_id=user_id,
    item_ids=item_ids,
    platform=platform,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
