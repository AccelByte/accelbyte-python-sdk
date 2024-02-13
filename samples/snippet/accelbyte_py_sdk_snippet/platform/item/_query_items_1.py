import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_items_1
from accelbyte_py_sdk.api.platform.models import ErrorEntity
from accelbyte_py_sdk.api.platform.models import FullItemPagingResult
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = query_items_1(
    app_type=app_type,
    available_date=available_date,
    base_app_id=base_app_id,
    category_path=category_path,
    features=features,
    include_sub_category_item=include_sub_category_item,
    item_name=item_name,
    item_status=item_status,
    item_type=item_type,
    limit=limit,
    offset=offset,
    region=region,
    section_exclusive=section_exclusive,
    sort_by=sort_by,
    store_id=store_id,
    tags=tags,
    target_namespace=target_namespace,
    with_total=with_total,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
