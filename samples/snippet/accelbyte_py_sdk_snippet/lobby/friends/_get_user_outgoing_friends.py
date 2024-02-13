import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_user_outgoing_friends
from accelbyte_py_sdk.api.lobby.models import ModelGetUserOutgoingFriendsResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

result, error = get_user_outgoing_friends(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
