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

Example: '{"contents": ["fADhK7Oo0qZAJUc1", "k9JwtiUyyg4fIu73", "YFAq9IFv1SnLBG6I"], "name": "uHnwqOyEZidAKp0r"}'
"""

result, error = update_group(
    body=body,
    group_id=group_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
