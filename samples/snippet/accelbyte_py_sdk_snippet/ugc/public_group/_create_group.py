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

Example: '{"contents": ["11dt6ZnKNPvw1J5Q", "bRWadquNaE0igPWh", "jEpGJkQudBuaJTYz"], "name": "HNVm8QVpNr9RXci0"}'
"""

result, error = create_group(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
