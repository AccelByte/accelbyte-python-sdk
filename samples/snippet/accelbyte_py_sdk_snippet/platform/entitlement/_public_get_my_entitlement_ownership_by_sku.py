import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_get_my_entitlement_ownership_by_sku
from accelbyte_py_sdk.api.platform.models import TimedOwnership

result, error = public_get_my_entitlement_ownership_by_sku(
    sku=sku,
    entitlement_clazz=entitlement_clazz,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
