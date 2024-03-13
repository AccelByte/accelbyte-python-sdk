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

Example: '{"addedTags": ["wfnPQDNz11ukEMJi", "sgaSyKBpY4lpzdkq", "wl2K5rw5OLksBa8Q"], "isProtected": true, "name": "n8N7EHtGMmzeEf6E", "removedTags": ["ErWGrQLinuPklQcO", "vRrRWKT4tuXAtF2L", "NZoYK9l1W8AJOf31"]}'
"""

result, error = image_patch(
    body=body,
    image_id=image_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
