import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_save_item
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsItemResp
from accelbyte_py_sdk.api.inventory.models import ApimodelsSaveItemReq

"""
body:
Definition: ApimodelsSaveItemReq
custom_attributes: Dict[str, Any]
inventory_configuration_code: str
qty: int
server_custom_attributes: Dict[str, Any]
slot_id: str
slot_used: int
source: str
source_item_id: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"Xrd3WM7tTo4Az6ud": {}, "M7fR2j0I2C9n8h57": {}, "wGyURqT2JWYVWecz": {}}, "inventoryConfigurationCode": "gGjYE4JyO9Vy8Me8", "qty": 13, "serverCustomAttributes": {"jCZITcWtDQmuKcYe": {}, "j44Vz6JDxW4euTd6": {}, "cAAaBAglyWXYUNi8": {}}, "slotId": "P1sovhjKwWqYiv9Y", "slotUsed": 95, "source": "ECOMMERCE", "sourceItemId": "CRlY9rfBSIHsSYgd", "tags": ["7BUF9ZUix0MtXYO4", "QVMny0YYpAV7uPzI", "A7AB771AHYiJ85vz"], "type": "eRKprgxMGK6cD4Bu"}'
"""

result, error = admin_save_item(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
