import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_my_entitlement_ownership_by_item_id
from accelbyte_py_sdk.api.platform.models import TimedOwnership

result, error = public_get_my_entitlement_ownership_by_item_id(
    item_id=item_id,
    entitlement_clazz=entitlement_clazz,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
