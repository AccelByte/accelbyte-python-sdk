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

Example: '{"items": [{"qty": 44, "slotId": "0baw97ItM82xyWty", "sourceItemId": "O1hkwMeicO2SrCxV"}, {"qty": 81, "slotId": "TnSebl0GZEQeV3C5", "sourceItemId": "O2oW5bhWOaGJ7H9i"}, {"qty": 12, "slotId": "VA0suRXqFRGFccYS", "sourceItemId": "xnU4zUKMTIL6bJzN"}], "srcInventoryId": "mJR8sRUYtPODKZ8i"}'
"""

result, error = public_move_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
