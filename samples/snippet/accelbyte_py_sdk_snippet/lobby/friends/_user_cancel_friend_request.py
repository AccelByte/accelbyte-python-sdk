import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import user_cancel_friend_request
from accelbyte_py_sdk.api.lobby.models import ModelUserCancelFriendRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelUserCancelFriendRequest
friend_id: str

Example: '{"friendId": "tg79x44s82PbkICH"}'
"""

result, error = user_cancel_friend_request(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)