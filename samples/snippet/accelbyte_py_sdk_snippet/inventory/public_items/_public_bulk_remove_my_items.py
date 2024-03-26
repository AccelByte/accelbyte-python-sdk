import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_bulk_remove_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsRemoveInventoryItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsRemoveInventoryItemReq]
slot_id: str
source_item_id: str

Example: '[{"slotId": "VrDfgaQEPsD81IiZ", "sourceItemId": "SK5ZriGXcD88P980"}, {"slotId": "O3wuk5vcwRdJ9bR0", "sourceItemId": "sQU2hpUBhC7Y6cTC"}, {"slotId": "aDBEUxf17f8J1AhO", "sourceItemId": "FvjLpuv0N3Jn99PD"}]'
"""

result, error = public_bulk_remove_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
