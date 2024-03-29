import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_consume_user_item
from accelbyte_py_sdk.api.inventory.models import ApimodelsConsumeItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsItemResp

"""
body:
Definition: ApimodelsConsumeItemReq
qty: int
slot_id: str
source_item_id: str

Example: '{"qty": 60, "slotId": "976qOBaiNGkOKumY", "sourceItemId": "8Bv2hRzdjgJPvtNK"}'
"""

result, error = admin_consume_user_item(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
