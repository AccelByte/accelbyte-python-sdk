import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_create_party
from accelbyte_py_sdk.api.session.models import ApimodelsCreatePartyRequest
from accelbyte_py_sdk.api.session.models import ApimodelsPartySessionResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsCreatePartyRequest
attributes: Dict[str, Any]
configuration_name: str
inactive_timeout: int
invite_timeout: int
joinability: str
max_players: int
members: List[ApimodelsRequestMember]
Definition: List[ApimodelsRequestMember]
    id_: str
    platform_id: str
    platform_user_id: str
min_players: int
text_chat: bool
type_: str

Example: '{"attributes": {"b8OkbAwRp0OpkoTF": {}, "B4rE7y7bOTST1pDJ": {}, "C3Xbj4V9TKGB1oHF": {}}, "configurationName": "ywTUFx6CjqCqK64q", "inactiveTimeout": 34, "inviteTimeout": 32, "joinability": "X2RZnGdlBh03qqoX", "maxPlayers": 77, "members": [{"ID": "EXZuzUomY5eMhQNq", "PlatformID": "YJnJB2sj7gnVCOUS", "PlatformUserID": "kxDjQLgNWWIm5cZJ"}, {"ID": "i1vaujKVE0FbgN9g", "PlatformID": "bfYsxac3tQ5xhHQ8", "PlatformUserID": "6SkfBErilI3IaYYK"}, {"ID": "EW8g4iYO2yesiw9L", "PlatformID": "YQPrPp6QwFjdGXbF", "PlatformUserID": "tgdaJfgWEcp65vgJ"}], "minPlayers": 50, "textChat": true, "type": "SP2Lw9SQMz7vm4Mq"}'
"""

result, error = public_create_party(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
