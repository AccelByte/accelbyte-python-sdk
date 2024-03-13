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

Example: '{"items": [{"qty": 15, "slotId": "Hk2xYYSAlvAUKpO8", "sourceItemId": "iUAThyG7KMwj3SIw"}, {"qty": 43, "slotId": "9CFVYjjb76BZ93Cq", "sourceItemId": "NqctEMXVEJIpVSCx"}, {"qty": 2, "slotId": "ur4Ru4dZz51HDdq6", "sourceItemId": "KgbnzHLCvzixqtxY"}], "srcInventoryId": "X71C0HeBNfC78s86"}'
"""

result, error = public_move_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
