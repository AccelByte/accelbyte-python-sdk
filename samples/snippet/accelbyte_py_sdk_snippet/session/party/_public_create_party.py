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

Example: '{"attributes": {"09BV6w3nKDQvTnB7": {}, "FdPZxy7gMVLOfccA": {}, "UkDecjzVJQeVJqRi": {}}, "configurationName": "ps8eWtpAEBp8KlSu", "inactiveTimeout": 88, "inviteTimeout": 26, "joinability": "hc6Ca10h4HR6zDWt", "maxPlayers": 58, "members": [{"ID": "ZIy3XLIuHFlnVmmS", "PlatformID": "AmzFRkj8u5kWCqgi", "PlatformUserID": "VKIhhvgmsEHCuwkx"}, {"ID": "lQaphpvLI8CgMH4g", "PlatformID": "f5AUCYkw5I31x5bg", "PlatformUserID": "Ya0geasZsz4nAThD"}, {"ID": "yzloSwDLgP1mByST", "PlatformID": "Zq12YbpAul7CNREc", "PlatformUserID": "Ko0naeEkByz32Zak"}], "minPlayers": 23, "textChat": false, "type": "EEubOXV08GBTaYLW"}'
"""

result, error = public_create_party(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
