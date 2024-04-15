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

Example: '{"attributes": {"OO0eIufTbUdFnVFc": {}, "ziG25IpRtxKvYNNp": {}, "sQ8jYkzInqT66Cj7": {}}, "configurationName": "J4yJp4oJpp8lThaE", "inactiveTimeout": 11, "inviteTimeout": 68, "joinability": "To22HG3gq305qEaU", "maxPlayers": 34, "members": [{"ID": "Cgxc6eB9HCax3kte", "PlatformID": "3E7KoFzzkLhGmDHi", "PlatformUserID": "2dbyIdTJqyMaESXX"}, {"ID": "u0qQ0y2y4ADLUqvj", "PlatformID": "U816MH9KMySbuYnS", "PlatformUserID": "aA1Fou2ssuBZ6CxX"}, {"ID": "zqFB3AyxdgUcyiPt", "PlatformID": "pjhQekjxluftvNUs", "PlatformUserID": "HPxKJLHsKjsrBVdL"}], "minPlayers": 14, "textChat": false, "type": "uxzstgQ3QUYz2Vjw"}'
"""

result, error = public_create_party(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
