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

Example: '{"addedTags": ["w1ZaeZuJhHy5unak", "OvYjwIHRLyKzXql4", "CVCe9LAxhnwEFVj1"], "isProtected": false, "name": "4VMZt1tVi9Pn9oXa", "removedTags": ["YukQ30WowbWY7MTe", "ZofpxXsqRdYSPZxo", "n1U2CU0UZgcMeixt"]}'
"""

result, error = image_patch(
    body=body,
    image_id=image_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
