import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_update_inventory
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsInventoryResp
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateInventoryReq

"""
body:
Definition: ApimodelsUpdateInventoryReq
inc_max_slots: int

Example: '{"incMaxSlots": 31}'
"""

result, error = admin_update_inventory(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
