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

Example: '[{"customAttributes": {"7lkJ3uLMpeBAx8IK": {}, "ZbmsxRsGGwBKnQBh": {}, "xJl9CfYA7Zn6RhQT": {}}, "slotId": "VGsupvVYyIPN3zW2", "sourceItemId": "ZnEuqfNkhzKSWleP", "tags": ["R5WekFBFtlxSuTBT", "RWzgISrX9LvxRMRs", "WLPKAC9T6wdSqQvz"]}, {"customAttributes": {"wX0KoIHNYkiYxOHB": {}, "5hlpNQSYcYePbMfH": {}, "xklN5a6BokTpmQu3": {}}, "slotId": "PSTGcf1hWZkex9N8", "sourceItemId": "KBQliGWHZq8FCjsb", "tags": ["SExWD4hlomTBPNBe", "cM3mvKHb1n4Ol2kp", "cbrGllVCrkegUOUO"]}, {"customAttributes": {"nyXR1tozD9Levw9W": {}, "cuv2qXEbpEIe40qD": {}, "VsRkcp0azHTQm1NT": {}}, "slotId": "FbWsFpCuKsoxUCn5", "sourceItemId": "FIToCSW53vKpETOi", "tags": ["Jog5rKhqwkLuKdIS", "zXUbbAj5NohNcB45", "jSYK6IOnB5Q4ezfK"]}]'
"""

result, error = public_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
