import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_query_user_entitlements
from accelbyte_py_sdk.api.platform.models import EntitlementPagingSlicedResult

result, error = public_query_user_entitlements(
    user_id=user_id,
    app_type=app_type,
    entitlement_clazz=entitlement_clazz,
    entitlement_name=entitlement_name,
    features=features,
    item_id=item_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
