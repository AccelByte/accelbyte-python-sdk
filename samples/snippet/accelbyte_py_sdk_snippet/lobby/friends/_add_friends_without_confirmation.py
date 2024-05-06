import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import add_friends_without_confirmation
from accelbyte_py_sdk.api.lobby.models import ModelBulkFriendsRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelBulkFriendsRequest
friend_ids: List[str]

Example: '{"friendIds": ["v8NWa9fYidbXMlfq", "n4xhZ5jjzaYZAgR7", "BRPVnMOJxIyEBH2s"]}'
"""

result, error = add_friends_without_confirmation(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
