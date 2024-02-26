import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_group
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateGroupRequest
contents: List[str]
name: str

Example: '{"contents": ["c96Ki0qjqCE8MWxo", "vCqJvWPSL5j8A8Wu", "5c7bOpxmTiCH6A85"], "name": "bEX9UXl2UazQLwoU"}'
"""

result, error = admin_update_group(
    body=body,
    group_id=group_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
