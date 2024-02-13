import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_get_inventory
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsInventoryResp

result, error = admin_get_inventory(
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
