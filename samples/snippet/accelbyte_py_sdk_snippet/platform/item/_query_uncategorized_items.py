import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_uncategorized_items
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemPagingSlicedResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = query_uncategorized_items(
    active_only=active_only,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
