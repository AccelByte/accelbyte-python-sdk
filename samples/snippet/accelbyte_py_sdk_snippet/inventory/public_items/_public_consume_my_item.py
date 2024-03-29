import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_consume_my_item
from accelbyte_py_sdk.api.inventory.models import ApimodelsConsumeItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsItemResp

"""
body:
Definition: ApimodelsConsumeItemReq
qty: int
slot_id: str
source_item_id: str

Example: '{"qty": 58, "slotId": "OjQ5cpujaiVzJzRm", "sourceItemId": "KkmjOaFhnafm2tNk"}'
"""

result, error = public_consume_my_item(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
