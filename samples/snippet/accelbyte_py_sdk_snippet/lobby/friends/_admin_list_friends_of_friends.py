import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_list_friends_of_friends
from accelbyte_py_sdk.api.lobby.models import ModelFriendshipConnectionResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = admin_list_friends_of_friends(
    user_id=user_id,
    friend_id=friend_id,
    limit=limit,
    nopaging=nopaging,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
