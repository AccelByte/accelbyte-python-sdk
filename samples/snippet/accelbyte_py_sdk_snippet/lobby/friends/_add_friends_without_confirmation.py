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

Example: '{"friendIds": ["vY0IRJ9ZGjtYoezP", "VS2OWnDvYU4yhR2P", "KhBuUsYqsA7CcVAH"]}'
"""

result, error = add_friends_without_confirmation(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
