import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import (
    public_get_user_entitlement_ownership_by_item_ids,
)
from accelbyte_py_sdk.api.platform.models import EntitlementOwnership

result, error = public_get_user_entitlement_ownership_by_item_ids(
    user_id=user_id,
    ids=ids,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
