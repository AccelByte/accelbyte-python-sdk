import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_get_bulk_player_blocked_players_v1
from accelbyte_py_sdk.api.lobby.models import ModelsGetBulkAllPlayerBlockedUsersRequest
from accelbyte_py_sdk.api.lobby.models import ModelsGetBulkAllPlayerBlockedUsersResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsGetBulkAllPlayerBlockedUsersRequest
list_blocked_user_id: List[str]

Example: '{"listBlockedUserId": ["pbQwGYk5I1bql90x", "cVX5vXvOfBiSFxec", "vlnUzN3pl4ct8NUS"]}'
"""

result, error = admin_get_bulk_player_blocked_players_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
