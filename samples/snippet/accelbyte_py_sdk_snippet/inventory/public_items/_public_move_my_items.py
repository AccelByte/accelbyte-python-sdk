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

Example: '{"items": [{"qty": 7, "slotId": "ymUWx5Z90gZu0TWw", "sourceItemId": "8AxJ3btNUrGXsUeT"}, {"qty": 79, "slotId": "ai1bAKQ3hNPwGRRk", "sourceItemId": "Vh3rjlEIASsJplpt"}, {"qty": 96, "slotId": "q8vQ2N0kwsZEYHSe", "sourceItemId": "RRWS9v1FI4IaRivj"}], "srcInventoryId": "zTc8I29X3s3U8GJB"}'
"""

result, error = public_move_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
