import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_bulk_block_players_v1
from accelbyte_py_sdk.api.lobby.models import ModelsListBlockedPlayerRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsListBlockedPlayerRequest
list_blocked_user_id: List[str]

Example: '{"listBlockedUserId": ["TrEzqapyQiFrYn7U", "XtT1O8QqqolRT0WM", "Iha0T4WhtcKU7wK8"]}'
"""

result, error = admin_bulk_block_players_v1(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
