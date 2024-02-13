import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_game_session_invite
from accelbyte_py_sdk.api.session.models import ApimodelsSessionInviteRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsSessionInviteRequest
platform_id: str
user_id: str

Example: '{"platformID": "Yt93uPm9hIAozQg0", "userID": "U8WT9T2cQxx6rajq"}'
"""

result, error = public_game_session_invite(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
