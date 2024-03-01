import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import bulk_delete_friends
from accelbyte_py_sdk.api.lobby.models import ModelBulkFriendsRequest
from accelbyte_py_sdk.api.lobby.models import ModelBulkFriendsResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelBulkFriendsRequest
friend_ids: List[str]

Example: '{"friendIds": ["apKz8QYX8Tdczgrh", "wrOduMIRju7uwzva", "0adWjmbPJ548OUDq"]}'
"""

result, error = bulk_delete_friends(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)