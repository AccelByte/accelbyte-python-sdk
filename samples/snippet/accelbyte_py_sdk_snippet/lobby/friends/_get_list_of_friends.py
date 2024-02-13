import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_list_of_friends
from accelbyte_py_sdk.api.lobby.models import ModelGetFriendsResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = get_list_of_friends(
    user_id=user_id,
    friend_id=friend_id,
    friend_ids=friend_ids,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
