import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_user_entitlement_ownership_by_sku
from accelbyte_py_sdk.api.platform.models import TimedOwnership

result, error = get_user_entitlement_ownership_by_sku(
    user_id=user_id,
    sku=sku,
    entitlement_clazz=entitlement_clazz,
    platform=platform,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
