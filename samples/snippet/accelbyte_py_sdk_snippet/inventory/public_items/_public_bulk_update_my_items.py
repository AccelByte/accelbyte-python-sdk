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

Example: '[{"customAttributes": {"LrbfyVwciU0H7YZ9": {}, "MfrJWfMzTzKguqgT": {}, "V8rKk65At67Q3JXK": {}}, "slotId": "or7OxeTrAK1bdEVl", "sourceItemId": "MnqBwaEqLy1Yx4qw", "tags": ["skRmiDWLFXSTizbf", "AfjiOkf5nUYtttc2", "UQ8YxzoJ0gZBTxP9"]}, {"customAttributes": {"UFADcDEWIBeVbCIZ": {}, "EWIesh5GxLqVPXbq": {}, "JQALvFvDA1jm8vJF": {}}, "slotId": "t1AtrPVmkcAEoWYG", "sourceItemId": "AIyF8fMENveul5Dp", "tags": ["z91u8VTBwLz8SccR", "5ZR9VCslvMOCkMT7", "4SpkHhaRhMLZ6D42"]}, {"customAttributes": {"LiC6Z8R6VqkUAjIc": {}, "IBr1wSmsoz1tW6BU": {}, "OTQOrbs1ovG0lqKH": {}}, "slotId": "fMB1IxJPIidu2YQ7", "sourceItemId": "sYbMmh37BG6yKTez", "tags": ["AJFfenImjpnkOiKF", "8xbvOFz7PgpHFzGf", "7xRPr6LfsxxwA06K"]}]'
"""

result, error = public_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
