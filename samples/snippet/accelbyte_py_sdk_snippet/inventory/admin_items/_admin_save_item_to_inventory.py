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

Example: '{"customAttributes": {"JDhjJUFFIYs3wTzd": {}, "TuKQkaFwHtRPlM20": {}, "XO34Fi30dH2WWVbP": {}}, "qty": 95, "serverCustomAttributes": {"9cyPpDCK4z2bMsDE": {}, "uoQNygTGh6f2zI1G": {}, "lgVMDClx32aWeeT6": {}}, "slotId": "HVVQtc2vzP7EEW8n", "slotUsed": 37, "sourceItemId": "USc0DPxwTtNLCBJJ", "tags": ["3uC2fXbq9vSRzpA7", "UOj5zbOS8PziBp6J", "VhkNH9Fn2smsAQKT"], "type": "KbqjJD1fYwrGAjZi"}'
"""

result, error = admin_save_item_to_inventory(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
