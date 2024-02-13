import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_entitlements_1
from accelbyte_py_sdk.api.platform.models import EntitlementPagingSlicedResult

result, error = query_entitlements_1(
    active_only=active_only,
    item_ids=item_ids,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
