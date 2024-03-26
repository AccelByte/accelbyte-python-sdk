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
source_item_id: str
tags: List[str]
type_: str

Example: '{"customAttributes": {"YMzWJRNB03Zuep9i": {}, "M7Y8yRIIXnvyJSeq": {}, "bU7VVgMsT2CIL8Lw": {}}, "inventoryConfigurationCode": "XYMLcZ1T6AgGy8A0", "qty": 75, "serverCustomAttributes": {"tTrlL0EKxg7wDVYN": {}, "c23a90Y7WHR1nE5Y": {}, "ePZ0NjDQWv7LhSx2": {}}, "slotId": "3TbzUsjPXdFzkIOv", "slotUsed": 41, "sourceItemId": "qOvedCmSf34zZ2Gg", "tags": ["ldqaWjj8s0IeFW1E", "GSA4z41ZbpBvsmsl", "X445oUnXG61B6fz1"], "type": "LscJLcKGksuZ5GDQ"}'
"""

result, error = admin_save_item(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
