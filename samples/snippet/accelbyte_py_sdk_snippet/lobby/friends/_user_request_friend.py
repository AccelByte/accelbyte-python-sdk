import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import user_request_friend
from accelbyte_py_sdk.api.lobby.models import ModelUserRequestFriendRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelUserRequestFriendRequest
friend_id: str
friend_public_id: str

Example: '{"friendId": "3cGYpEqRCCGyEt4T", "friendPublicId": "ocMUQTbw5GYPzOoI"}'
"""

result, error = user_request_friend(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
