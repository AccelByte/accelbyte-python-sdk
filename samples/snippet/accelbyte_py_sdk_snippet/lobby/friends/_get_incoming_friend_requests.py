import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_incoming_friend_requests
from accelbyte_py_sdk.api.lobby.models import ModelLoadIncomingFriendsWithTimeResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = get_incoming_friend_requests(
    user_id=user_id,
    friend_id=friend_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
