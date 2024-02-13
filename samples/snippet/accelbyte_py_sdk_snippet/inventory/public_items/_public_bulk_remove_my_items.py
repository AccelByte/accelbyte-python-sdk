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

Example: '[{"slotId": "2a8BbnBH7UEcUFCu", "sourceItemId": "XNQSdlFQEpGnoNic"}, {"slotId": "QQJdFeslRrRvJYwV", "sourceItemId": "GI91ySgoJBbJvoJv"}, {"slotId": "SL27MU4gJEO8gceS", "sourceItemId": "qqOitOn5Yi0jKyFc"}]'
"""

result, error = public_bulk_remove_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
