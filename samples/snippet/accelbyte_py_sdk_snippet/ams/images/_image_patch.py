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

Example: '{"addedTags": ["TWYNTt94LS60tlSO", "o2CNQwk7J7eBsXPg", "y081ZxfaSN0oNrS0"], "isProtected": false, "name": "JaiS2B9uIf9vmWwr", "removedTags": ["v9Fc6MDhaWtpsONs", "fA4zejo62dNqUKJL", "k7Jes5zc1pwI6d8r"]}'
"""

result, error = image_patch(
    body=body,
    image_id=image_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
