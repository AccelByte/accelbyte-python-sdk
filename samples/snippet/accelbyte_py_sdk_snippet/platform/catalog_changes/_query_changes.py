import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import query_changes
from accelbyte_py_sdk.api.platform.models import CatalogChangePagingResult

result, error = query_changes(
    store_id=store_id,
    action=action,
    item_sku=item_sku,
    item_type=item_type,
    limit=limit,
    offset=offset,
    selected=selected,
    sort_by=sort_by,
    status=status,
    type_=type_,
    updated_at_end=updated_at_end,
    updated_at_start=updated_at_start,
    with_total=with_total,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
