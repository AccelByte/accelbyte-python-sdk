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

Example: '{"contents": ["PXtp9dXQDZOtFs3Q", "wxPhLFql5k6lmEfb", "BlAMbEA4saIfB17i"], "name": "05fQQ2DX5TlKrERM"}'
"""

result, error = admin_update_group(
    body=body,
    group_id=group_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
