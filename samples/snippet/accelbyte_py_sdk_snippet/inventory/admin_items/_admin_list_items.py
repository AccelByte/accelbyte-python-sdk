import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_list_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsListItemResp

result, error = admin_list_items(
    inventory_id=inventory_id,
    limit=limit,
    offset=offset,
    qty_gte=qty_gte,
    sort_by=sort_by,
    source_item_id=source_item_id,
    tags=tags,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
