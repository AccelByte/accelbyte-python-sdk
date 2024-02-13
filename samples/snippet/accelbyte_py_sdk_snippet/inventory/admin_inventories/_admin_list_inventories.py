import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_list_inventories
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsListInventoryResp

result, error = admin_list_inventories(
    inventory_configuration_code=inventory_configuration_code,
    limit=limit,
    offset=offset,
    sort_by=sort_by,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
