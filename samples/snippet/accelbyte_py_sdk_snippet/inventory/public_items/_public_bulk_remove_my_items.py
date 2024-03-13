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

Example: '[{"slotId": "sgThKIjOxWKxUkRH", "sourceItemId": "QNWYFxPVm5lCwPfH"}, {"slotId": "RBaDQzm4OJ9bf7Mw", "sourceItemId": "JDEBE4gtOlzo6jRs"}, {"slotId": "JiQWy23LyoSn8LAk", "sourceItemId": "M0Kljg5qVmio7QIC"}]'
"""

result, error = public_bulk_remove_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
