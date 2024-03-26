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

Example: '{"items": [{"qty": 85, "slotId": "i2QDbxetExVBrOfP", "sourceItemId": "YxEGw8HVCB3tyy49"}, {"qty": 86, "slotId": "5035GiRYL2B35ypr", "sourceItemId": "n37j22RpeLc3y8md"}, {"qty": 1, "slotId": "2V3RnRthgda9a6XI", "sourceItemId": "z34qAEyDfV9ygNeK"}], "srcInventoryId": "FlMYMyso1Bww1SxB"}'
"""

result, error = public_move_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
