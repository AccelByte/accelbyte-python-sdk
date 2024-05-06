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

Example: '{"customAttributes": {"gZThy3RncziSxMkh": {}, "Z3qwKXTt7IeCRvrc": {}, "zbHSMWLlKcEXUP2G": {}}, "inventoryConfigurationCode": "IlOMdmPUD3OzAluu", "qty": 44, "serverCustomAttributes": {"859BLsO5iUIi5rPr": {}, "gy1n9gqgRDOdJLEx": {}, "HIDYFhlbWFmjjLhq": {}}, "slotId": "paCzXDtWOq8Urxx7", "slotUsed": 11, "source": "ECOMMERCE", "sourceItemId": "5nBgqQtwIXLU0Uid", "tags": ["YpCG9oXuUsDfawYQ", "GnEJ3kdUFNjEbRLi", "SFUcpCaerYCUIq53"], "type": "2xPS9dLPhWPtcFmJ"}'
"""

result, error = admin_save_item(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
