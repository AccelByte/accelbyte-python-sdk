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

Example: '{"addedTags": ["fZqBu4dqDVTBL6PW", "6KpKtKUpktXRJWgk", "Ym5spNMBHJ9sHnYd"], "isProtected": true, "name": "vbcg4A8NZbtLwb2C", "removedTags": ["QQHNP8CHzHBdwp6N", "JGwjM2YWtcUgyMns", "RtQSAzbHQzmRXJXx"]}'
"""

result, error = image_patch(
    body=body,
    image_id=image_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
