import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_bulk_remove_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsRemoveInventoryItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsRemoveInventoryItemReq]
slot_id: str
source_item_id: str

Example: '[{"slotId": "EPv3mx7Y81A0xtUn", "sourceItemId": "0fGzB8Vb1X94dbAG"}, {"slotId": "QsMrXDXDVdtD52UH", "sourceItemId": "aMLC6Pcry2hOMz6i"}, {"slotId": "wlNb5l66dPfIyYu2", "sourceItemId": "lSmIYBdsoCaN9d5z"}]'
"""

result, error = admin_bulk_remove_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
