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

Example: '{"blocked_players": ["phhaeOqnyGjfFsG6", "jwXKRTQLFzUdH4H1", "iYtgei678OJCDsJs"], "party_id": "FdVO0AQzlAKfifYY", "user_id": "QXfmqko10AZxagOo"}'
"""

result, error = add_user_into_session_in_channel(
    body=body,
    channel_name=channel_name,
    match_id=match_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
