import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import public_player_block_players_v1
from accelbyte_py_sdk.api.lobby.models import ModelsBlockPlayerRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsBlockPlayerRequest
blocked_user_id: str

Example: '{"blockedUserId": "0qoENbVXLHrRjfy5"}'
"""

result, error = public_player_block_players_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
