import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import public_get_player_blocked_by_players_v1
from accelbyte_py_sdk.api.lobby.models import ModelsGetAllPlayerBlockedByUsersResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = public_get_player_blocked_by_players_v1(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
