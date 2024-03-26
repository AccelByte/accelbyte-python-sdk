import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import image_patch
from accelbyte_py_sdk.api.ams.models import ApiImageDetails
from accelbyte_py_sdk.api.ams.models import ApiImageUpdate
from accelbyte_py_sdk.api.ams.models import ResponseErrorResponse

"""
body:
Definition: ApiImageUpdate
added_tags: List[str]
is_protected: bool
name: str
removed_tags: List[str]

Example: '{"addedTags": ["lICg4Bz4iywXDrcm", "bcPJCmmdKAtcdgK0", "GbZOs25oDOLuNhDW"], "isProtected": false, "name": "VJCXIZZSWJAH2kDA", "removedTags": ["P7dc6PoSyb6XJlaH", "wp2Dl3HtEGeHpRCQ", "9g12N7MSituJAubP"]}'
"""

result, error = image_patch(
    body=body,
    image_id=image_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
