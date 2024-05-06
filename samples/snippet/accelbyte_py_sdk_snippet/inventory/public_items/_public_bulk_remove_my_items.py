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

Example: '[{"slotId": "WdTeIu4xtsa8ObMw", "sourceItemId": "dEnx8rDL0sJly83K"}, {"slotId": "OXnGf6YRuGpoCIVY", "sourceItemId": "pH3UTU4QsOS5kbYk"}, {"slotId": "65bWkvZ727UsN4QB", "sourceItemId": "eRYRZl1tktstgxAR"}]'
"""

result, error = public_bulk_remove_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
