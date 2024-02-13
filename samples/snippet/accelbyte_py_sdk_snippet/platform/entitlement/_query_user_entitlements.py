import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_user_entitlements
from accelbyte_py_sdk.api.platform.models import EntitlementPagingSlicedResult

result, error = query_user_entitlements(
    user_id=user_id,
    active_only=active_only,
    app_type=app_type,
    collection_id=collection_id,
    entitlement_clazz=entitlement_clazz,
    entitlement_name=entitlement_name,
    features=features,
    fuzzy_match_name=fuzzy_match_name,
    item_id=item_id,
    limit=limit,
    offset=offset,
    origin=origin,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
