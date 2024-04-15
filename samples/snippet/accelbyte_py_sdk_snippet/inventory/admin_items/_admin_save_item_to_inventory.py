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
source: str
source_item_id: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"n8zjXCjugXBefxcA": {}, "Ui3eOX2GN4hZvipV": {}, "F9uDUcjUReGxuZFu": {}}, "qty": 65, "serverCustomAttributes": {"CCPP3MddtluRjtbC": {}, "4iOxdfHxQlMAKx6d": {}, "oSpBWjWA3WGVqgrH": {}}, "slotId": "agdoCx3tBu1z0ulH", "slotUsed": 21, "source": "OTHER", "sourceItemId": "8h0AwtB6LxwdBbSU", "tags": ["KoJ0hy91y6GGBrjm", "2FafkV03xjI1tuGx", "ncwlCCBLFbfc4xlf"], "type": "gy5Cm6G78AXHqIXo"}'
"""

result, error = admin_save_item_to_inventory(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
