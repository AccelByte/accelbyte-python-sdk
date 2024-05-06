import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_bulk_remove_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsRemoveInventoryItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsRemoveInventoryItemReq]
slot_id: str
source_item_id: str

Example: '[{"slotId": "WxWBhJ1UxpoKErvu", "sourceItemId": "iOTDoMucj3S13sZ6"}, {"slotId": "z72ye2yUDqwYXgoS", "sourceItemId": "8fjFi8xvAUBRDKJf"}, {"slotId": "48ZiuqzUBeHEg4g4", "sourceItemId": "4QbHv45o67J7xf3s"}]'
"""

result, error = admin_bulk_remove_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
