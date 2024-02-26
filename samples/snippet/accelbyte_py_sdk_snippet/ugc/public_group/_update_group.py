import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import update_group
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateGroupRequest
contents: List[str]
name: str

Example: '{"contents": ["RUpnkd1MAGQ5MjXs", "GLCqpy7PzuPnyEDD", "Rcd6w5K8eqCg5gXf"], "name": "L5V3LvOpFyBE1A7a"}'
"""

result, error = update_group(
    body=body,
    group_id=group_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
