import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_save_item_to_inventory
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsItemResp
from accelbyte_py_sdk.api.inventory.models import ApimodelsSaveItemToInventoryReq

"""
body:
Definition: ApimodelsSaveItemToInventoryReq
custom_attributes: Dict[str, Any]
qty: int
server_custom_attributes: Dict[str, Any]
slot_id: str
slot_used: int
source_item_id: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"FTo3nzADow5wSUZ6": {}, "nqdtINAyEVZSoFzN": {}, "t7UviE2a4BgTJINU": {}}, "qty": 89, "serverCustomAttributes": {"COhoicZwql1sYvZO": {}, "W7RSPZ2kWlHuv1RD": {}, "tQty4ZFequDnY7is": {}}, "slotId": "A0kVvbFrlZlr65ix", "slotUsed": 45, "sourceItemId": "73CWNOQxO4JPcSPC", "tags": ["mW19JekBC04tWkLb", "UhFbezD3Ki1bbz8F", "cGuWkmPwhCH2jHUk"], "type": "4JrywafB45ih6Dbr"}'
"""

result, error = admin_save_item_to_inventory(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
