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

Example: '{"customAttributes": {"fnx7lQaVUpw35LQB": {}, "a12ou6nim8HYLxbl": {}, "Dj32EBCXLZfR9IjP": {}}, "inventoryConfigurationCode": "ID7R2IKAUwNzXuDl", "qty": 68, "serverCustomAttributes": {"f2BPR9WpIi4dXu2X": {}, "ONUYCYqYvSOqWK1x": {}, "kQOkj5YjKbHyjK9i": {}}, "slotId": "SNvmbvkApa2xdDN4", "slotUsed": 61, "sourceItemId": "63NAsO8LQ8uXBtFn", "tags": ["kvGWXkbkfH6MnV0f", "h7jW1cd7AVR9g1iX", "HdLvirZdem48x3Ul"], "type": "cdDJiQocaMknHBMz"}'
"""

result, error = admin_save_item(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
