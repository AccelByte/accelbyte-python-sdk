import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import public_bulk_update_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsUpdateItemReq]
custom_attributes: Dict[str, Any]
slot_id: str
source_item_id: str
tags: List[str]

Example: '[{"customAttributes": {"nf9MY9OXa7JtyHuy": {}, "PmPbasgAjq13gTbc": {}, "Fu6ZFwf1cHCPhNB1": {}}, "slotId": "IqWghkaviIX8WUpb", "sourceItemId": "2A3RWVl1b3aSabgT", "tags": ["wF4nFNJ3IFx1jIzt", "7dGWEj7qABK6pdJ9", "sic9RpQds0fzfl8Y"]}, {"customAttributes": {"53Rso1ZyjeyM2S9e": {}, "O966vid984bh0qqq": {}, "1HlU1w59wxfISsXT": {}}, "slotId": "ziaZER8YCtHhScQF", "sourceItemId": "YEqmkmvuEjo49nN2", "tags": ["tOfeUrkH5RorzvQC", "vX64PVL0tYj7qGyO", "a2oUErtXe4S8p1cX"]}, {"customAttributes": {"Z38laBiEkKRvJCwK": {}, "1piVJOSj2ydxWOdo": {}, "kfwkOwKf5IKZ75Ck": {}}, "slotId": "D2j9p1HmGfLovaUj", "sourceItemId": "qXWVxGL1JJLoSJjl", "tags": ["AQVR1pDcY7RsstVj", "R27oyWtZPc3lMvLf", "oqKTfR4PtSER54JU"]}]'
"""

result, error = public_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
