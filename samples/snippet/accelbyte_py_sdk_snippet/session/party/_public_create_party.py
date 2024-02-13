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

Example: '{"attributes": {"kbxbQFKfXQmT1QFB": {}, "vn4LbLSVJUX92Msp": {}, "aftaVsLD6cctW6gP": {}}, "configurationName": "kYWkUO6mFlnVVLJg", "inactiveTimeout": 23, "inviteTimeout": 23, "joinability": "00Ticr5gSpecn9mt", "maxPlayers": 95, "members": [{"ID": "dbq6zQ8XdXMEgnFj", "PlatformID": "4aLzIrRpxFdc8f8H", "PlatformUserID": "Z3FIqA2ULg9hkyA7"}, {"ID": "JcbEdLayJboWf1QP", "PlatformID": "FJsEuCkli3MneIZL", "PlatformUserID": "UNzAWTvMNMEApIPm"}, {"ID": "uNDT8dBy8DrxL9Zm", "PlatformID": "VMDaJ7cTxXuybluz", "PlatformUserID": "EzOipcBBOBYxz2PB"}], "minPlayers": 91, "textChat": true, "type": "EJl9ihz44NUeX2Ez"}'
"""

result, error = public_create_party(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
