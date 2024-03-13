import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import add_user_into_session_in_channel
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchAddUserIntoSessionRequest
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

"""
body:
Definition: ModelsMatchAddUserIntoSessionRequest
blocked_players: List[str]
party_id: str
user_id: str

Example: '{"blocked_players": ["Ldg1reuFdMgDTz7b", "H8BUpjJrIwayq8kY", "UwtbQ6PB1HyQ5izN"], "party_id": "RuqCyk5jLJMVL36W", "user_id": "qWW2M5my87VUlhRY"}'
"""

result, error = add_user_into_session_in_channel(
    body=body,
    channel_name=channel_name,
    match_id=match_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
