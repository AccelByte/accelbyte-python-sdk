import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_outgoing_friend_requests
from accelbyte_py_sdk.api.lobby.models import ModelLoadOutgoingFriendsWithTimeResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = get_outgoing_friend_requests(
    user_id=user_id,
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
