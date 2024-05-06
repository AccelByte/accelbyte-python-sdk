import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_move_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsMoveItemsReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsMoveItemsResp

"""
body:
Definition: ApimodelsMoveItemsReq
items: List[ApimodelsTradeItem]
Definition: List[ApimodelsTradeItem]
    qty: int
    slot_id: str
    source_item_id: str
src_inventory_id: str

Example: '{"items": [{"qty": 33, "slotId": "GuqaaDb6RemKWh1E", "sourceItemId": "lxM6avkdo4fnSVAZ"}, {"qty": 73, "slotId": "gZg0xCJgLpHhhpzn", "sourceItemId": "0MhrO4giVQpXqBuC"}, {"qty": 62, "slotId": "szzD0890UH9lLK5N", "sourceItemId": "eslLZJ2ezwDOwGZ0"}], "srcInventoryId": "dIwBt5dv2XTFhqg8"}'
"""

result, error = public_move_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
