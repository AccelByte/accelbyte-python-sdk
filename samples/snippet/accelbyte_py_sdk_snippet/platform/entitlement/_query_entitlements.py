import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_entitlements
from accelbyte_py_sdk.api.platform.models import EntitlementPagingSlicedResult

result, error = query_entitlements(
    active_only=active_only,
    app_type=app_type,
    entitlement_clazz=entitlement_clazz,
    entitlement_name=entitlement_name,
    item_id=item_id,
    limit=limit,
    offset=offset,
    origin=origin,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
