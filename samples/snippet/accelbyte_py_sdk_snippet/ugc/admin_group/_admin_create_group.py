import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_create_group
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateGroupRequest
contents: List[str]
name: str

Example: '{"contents": ["IjVZoVsScJQnW8yQ", "KfZvLQ6araEuE992", "azhOIDxNqiIm30Kr"], "name": "9ZFX0WhsgN4hUAYk"}'
"""

result, error = admin_create_group(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
