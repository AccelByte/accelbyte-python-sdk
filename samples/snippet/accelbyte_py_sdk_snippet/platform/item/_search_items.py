import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import search_items
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemPagingSlicedResult

result, error = search_items(
    keyword=keyword,
    language=language,
    active_only=active_only,
    item_type=item_type,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    store_id=store_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
