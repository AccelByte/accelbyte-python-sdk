import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_bulk_remove_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsRemoveInventoryItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsRemoveInventoryItemReq]
slot_id: str
source_item_id: str

Example: '[{"slotId": "APD0mNvC26NFSAvr", "sourceItemId": "xO3V0RHsrxK31rnY"}, {"slotId": "4RpfKhXNzsHeSotp", "sourceItemId": "w7Z0yvE9vY1nUPlI"}, {"slotId": "5unKOSle51QR5Kt5", "sourceItemId": "GPP2nayCenEzRl5s"}]'
"""

result, error = public_bulk_remove_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
