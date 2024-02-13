import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_list_item_types
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsListItemTypesResp

result, error = admin_list_item_types(
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
