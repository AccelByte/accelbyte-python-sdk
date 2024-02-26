import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_move_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsMoveItemsReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsMoveItemsResp

"""
body:
Definition: ApimodelsMoveItemsReq
items: List[ApimodelsTradeItem]
Definition: List[ApimodelsTradeItem]
    qty: int
    slot_id: str
    source_item_id: str
src_inventory_id: str

Example: '{"items": [{"qty": 62, "slotId": "oLgooab3fNZUHcPa", "sourceItemId": "PzlFc7xTYnMy6XKP"}, {"qty": 13, "slotId": "3pHm2jAGbGbOnAn6", "sourceItemId": "hhP3j5shwkFxEhxw"}, {"qty": 73, "slotId": "TcdCNLP3gjsLRbfg", "sourceItemId": "PfybMpcYWLhCtS1q"}], "srcInventoryId": "2vGzyOLoQumCASHG"}'
"""

result, error = public_move_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
