import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import create_group
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateGroupRequest
contents: List[str]
name: str

Example: '{"contents": ["8WYV4WqV7oSvVl8K", "AgA8jrYeEdOLnmwB", "bM9dzqt4bj41C8fN"], "name": "dZvBvwiGDcKi7Vyu"}'
"""

result, error = create_group(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
