import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_items
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemPagingSlicedResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = query_items(
    active_only=active_only,
    app_type=app_type,
    available_date=available_date,
    base_app_id=base_app_id,
    category_path=category_path,
    features=features,
    include_sub_category_item=include_sub_category_item,
    item_type=item_type,
    limit=limit,
    offset=offset,
    region=region,
    sort_by=sort_by,
    store_id=store_id,
    tags=tags,
    target_namespace=target_namespace,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
