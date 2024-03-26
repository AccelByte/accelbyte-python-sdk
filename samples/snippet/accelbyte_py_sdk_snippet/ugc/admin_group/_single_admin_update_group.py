import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import single_admin_update_group
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupRequest
from accelbyte_py_sdk.api.ugc.models import ModelsCreateGroupResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsCreateGroupRequest
contents: List[str]
name: str

Example: '{"contents": ["k57400P9P0cUlFli", "5YnCZnrSSYSQ6aYi", "oK4q1uLgFDrXMdEe"], "name": "2KM5iUrWzKiqUCgx"}'
"""

result, error = single_admin_update_group(
    body=body,
    group_id=group_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
