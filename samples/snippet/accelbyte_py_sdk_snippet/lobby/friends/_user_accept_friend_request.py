import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import user_accept_friend_request
from accelbyte_py_sdk.api.lobby.models import ModelUserAcceptFriendRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelUserAcceptFriendRequest
friend_id: str

Example: '{"friendId": "Gvf97hPk3Kll25IG"}'
"""

result, error = user_accept_friend_request(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
