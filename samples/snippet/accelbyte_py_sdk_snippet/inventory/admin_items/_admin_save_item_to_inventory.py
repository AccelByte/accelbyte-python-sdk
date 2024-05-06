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

Example: '{"customAttributes": {"d2INZ9QheC0TNycu": {}, "GyKRB9ENSJdbDPnn": {}, "1jNJY6yqKSKKFRyc": {}}, "qty": 90, "serverCustomAttributes": {"UF2fmVvWcyqDH3cK": {}, "XbjEU134Eh8al4p2": {}, "vy4UzsfZEiyZfTe3": {}}, "slotId": "TFDHy6RraLDD6brT", "slotUsed": 54, "source": "ECOMMERCE", "sourceItemId": "GSlWAXBjKYafdDZD", "tags": ["hRja75soGcFvSRq7", "oq1KaD7sC1OIAs3h", "tI7Z3qBbe0AXgI3l"], "type": "rAf8YAHrn9FR5wn9"}'
"""

result, error = admin_save_item_to_inventory(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
