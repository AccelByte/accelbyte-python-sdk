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

Example: '{"blocked_players": ["oHW19VVlaRtn2TFd", "nRQA1yODKDKl11Pc", "Vj0jURcIcFAxjA6y"], "party_id": "kCmaaZWwBZGrhKUM", "user_id": "1KLSPFBjj4O8p9W5"}'
"""

result, error = add_user_into_session_in_channel(
    body=body,
    channel_name=channel_name,
    match_id=match_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
