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

Example: '[{"slotId": "0v81ZYyqoEdz5c7o", "sourceItemId": "jJcUd4KngCwDSfqI"}, {"slotId": "GJV7EVrQ7wCEIgxI", "sourceItemId": "rpjZDs8fVWuYSBwH"}, {"slotId": "QrVEIwUAguAZzhJG", "sourceItemId": "9QXZOTfODBrTmFsD"}]'
"""

result, error = public_bulk_remove_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
