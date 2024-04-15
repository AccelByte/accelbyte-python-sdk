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

Example: '[{"slotId": "CypPz1zA3gJTvWmg", "sourceItemId": "EgMSZ5YhIPdvqbwd"}, {"slotId": "pHFEp1P0fKOHxDlZ", "sourceItemId": "9l3zbYecQ7cQypB7"}, {"slotId": "FN3Vsvgn4TbRxkRX", "sourceItemId": "0aOPIWqx1o5XsYUt"}]'
"""

result, error = admin_bulk_remove_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
