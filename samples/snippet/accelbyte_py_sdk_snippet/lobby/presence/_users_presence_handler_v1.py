import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import users_presence_handler_v1
from accelbyte_py_sdk.api.lobby.models import HandlersGetUsersPresenceResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = users_presence_handler_v1(
    user_ids=user_ids,
    count_only=count_only,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
