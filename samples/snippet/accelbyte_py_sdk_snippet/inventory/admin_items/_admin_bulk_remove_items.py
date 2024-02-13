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

Example: '[{"slotId": "Rv28mpAYfuq6GOxL", "sourceItemId": "ZY72rG0XRKehqgfQ"}, {"slotId": "zKWTDrm9SrA1T7LP", "sourceItemId": "1yRY1uJffRDV6NNI"}, {"slotId": "Yx0l85RC8Fifsb6n", "sourceItemId": "u2OUYqif1HdAiZEK"}]'
"""

result, error = admin_bulk_remove_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
