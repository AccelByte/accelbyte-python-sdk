import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import user_reject_friend_request
from accelbyte_py_sdk.api.lobby.models import ModelUserRejectFriendRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelUserRejectFriendRequest
friend_id: str

Example: '{"friendId": "We8iOcj8pLajzJjX"}'
"""

result, error = user_reject_friend_request(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
