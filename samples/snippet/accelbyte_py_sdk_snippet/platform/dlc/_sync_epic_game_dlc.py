import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import sync_epic_game_dlc
from accelbyte_py_sdk.api.platform.models import EpicGamesDLCSyncRequest
from accelbyte_py_sdk.api.platform.models import ErrorEntity

"""
body:
Definition: EpicGamesDLCSyncRequest
epic_games_jwt_token: str

Example: '{"epicGamesJwtToken": "ywy8IqZ8t2ERcYbk"}'
"""

result, error = sync_epic_game_dlc(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
