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

Example: '[{"customAttributes": {"17LWZka4SfYTy2S1": {}, "eNsEen8Z6D4r8USs": {}, "w1XACd0w9qM2lc8P": {}}, "slotId": "FlFqRZN7jzfbh5mc", "sourceItemId": "4ukEINFBOs17G2sf", "tags": ["Q1Io0UarEiMQ3ejb", "ZZ26YnkPMykp9JsT", "xxzhsILxJKYEjgVD"]}, {"customAttributes": {"ry7feswIhjZWF3Ap": {}, "bS5QpR3sCmRCYJva": {}, "636Bmb2ef2no7xpO": {}}, "slotId": "znNEQXjTTiHcsxFb", "sourceItemId": "SdLmDdzT2DV7KAXI", "tags": ["FcebibmVd0BK0fkp", "7gzdBeatBze8vL9a", "N5vVo5r7RRLfzRgK"]}, {"customAttributes": {"iyTlUdbL2uScz52d": {}, "Ln4x9JuMcVpGlyUS": {}, "c5CFhKQ9ZsUwZdp6": {}}, "slotId": "UL1qCkbaRgPidBEq", "sourceItemId": "fbQ7RhVHkQSjLLXI", "tags": ["YuDExZ5jWTGZDw6V", "vWVOvmBNPUBjJn3h", "3WbZDcFMP6xuUB3V"]}]'
"""

result, error = public_bulk_update_my_items(
    body=body,
    inventory_id=inventory_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
