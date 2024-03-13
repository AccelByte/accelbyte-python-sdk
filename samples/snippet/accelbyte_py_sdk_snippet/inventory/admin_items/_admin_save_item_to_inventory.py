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

Example: '{"customAttributes": {"rSjuvsv4GOfBRbmV": {}, "4C29YoxaDCvMVF8l": {}, "HPqd38zykORXsXwc": {}}, "qty": 65, "serverCustomAttributes": {"mrLJbIoic56xU8AB": {}, "LQQ7SVguCPtXLpl0": {}, "XsmIfu3kKHQWbAWK": {}}, "slotId": "HeYQMMIBklkKFolP", "slotUsed": 6, "sourceItemId": "rJTf9VMcolL3YhCe", "tags": ["zlbiGVLpkap3y3hS", "Bye8f78ktQ5zuIlQ", "j4EKnyfab6JJTVab"], "type": "7EhnAyUsZShwYXE6"}'
"""

result, error = admin_save_item_to_inventory(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
