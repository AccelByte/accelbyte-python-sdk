import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.inventory import admin_bulk_update_my_items
from accelbyte_py_sdk.api.inventory.models import ApimodelsAdminUpdateItemReq
from accelbyte_py_sdk.api.inventory.models import ApimodelsErrorResponse
from accelbyte_py_sdk.api.inventory.models import ApimodelsUpdateItemResp

"""
body:
Definition: List[ApimodelsAdminUpdateItemReq]
custom_attributes: Dict[str, Any]
server_custom_attributes: Dict[str, Any]
slot_id: str
source_item_id: str
tags: List[str]
type_: str

Example: '[{"customAttributes": {"4arg5u8BMH7eaW2l": {}, "tDLmflCL1SlQoTmv": {}, "Np8rhGhFrFwnkhE6": {}}, "serverCustomAttributes": {"FZ4Jz1T06LihvnE8": {}, "uJbJ01a9KObJkiCw": {}, "Y8NcIZfwdndPk6G0": {}}, "slotId": "h2i2BS0Pzy2ZLChK", "sourceItemId": "G55IjroTBQZRTqRm", "tags": ["D29gH729R9SNyCDj", "52aAyVznp3Ex907q", "EqkfLF6APttuS6Df"], "type": "OoRTq10HJWpmaLlD"}, {"customAttributes": {"n5tjh75BPySv6fBK": {}, "ggiq9mOQn98S6tNI": {}, "Kh9KC8N4M1Diybyn": {}}, "serverCustomAttributes": {"YrrIjDPmAW9yVErT": {}, "3J3kVO9Ocf6LI7JL": {}, "uPTjzw3P0lfyVo5y": {}}, "slotId": "NzcPKxF4WFzhDjNI", "sourceItemId": "FF2lnQVO9bF37nYe", "tags": ["FIreGUJM7xlmLHtu", "7Rv1l49XDMUe35vQ", "veif77SrlHgJF9hZ"], "type": "UFChgkk5AQ4fAfal"}, {"customAttributes": {"s7aCr0nrIXfkV4bK": {}, "8vWzRA07qlESHSmF": {}, "8XXNrME3K1XaRZiI": {}}, "serverCustomAttributes": {"l3CyrWvKmKI99rNt": {}, "ZmkAilFHmrgYU7NH": {}, "3Hxbva1f0T9cx0Ja": {}}, "slotId": "Rynlf6WvsVpa8odV", "sourceItemId": "nXTXbBYTViqCGepe", "tags": ["8Hm3iwlOSAoldfTM", "vSnd6Nygb5UHUdNz", "Qgx4b7jF0xO7piAG"], "type": "hZhpgecuM3Sg625E"}]'
"""

result, error = admin_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
