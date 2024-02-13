import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import public_query_user_entitlements_by_app_type
from accelbyte_py_sdk.api.platform.models import AppEntitlementPagingSlicedResult

result, error = public_query_user_entitlements_by_app_type(
    user_id=user_id,
    app_type=app_type,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
