import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import user_get_friendship_status
from accelbyte_py_sdk.api.lobby.models import ModelUserGetFriendshipStatusResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = user_get_friendship_status(
    friend_id=friend_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
