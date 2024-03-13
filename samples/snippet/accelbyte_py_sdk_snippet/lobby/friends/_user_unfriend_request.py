import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import user_unfriend_request
from accelbyte_py_sdk.api.lobby.models import ModelUserUnfriendRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelUserUnfriendRequest
friend_id: str

Example: '{"friendId": "yBNuvniaZ64dMI7Q"}'
"""

result, error = user_unfriend_request(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
