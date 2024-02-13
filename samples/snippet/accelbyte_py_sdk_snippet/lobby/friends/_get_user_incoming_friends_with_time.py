import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_user_incoming_friends_with_time
from accelbyte_py_sdk.api.lobby.models import ModelLoadIncomingFriendsWithTimeResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = get_user_incoming_friends_with_time(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
