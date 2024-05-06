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

Example: '{"contents": ["s2CDzo2Uvu1cvwhR", "JhDsUDBATsGm8FQz", "I0Yq8wrLcPQTKGx5"], "name": "2KLKJfhUdmdTzMSw"}'
"""

result, error = admin_update_group(
    body=body,
    group_id=group_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
