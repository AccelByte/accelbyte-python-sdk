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

Example: '{"attributes": {"jeEU1a9vo8r1gwu1": {}, "gMY9RKN2LsCwTnCZ": {}, "ahJDa5mPGIKnscJc": {}}, "configurationName": "KPCS2OirKWR8yGkp", "inactiveTimeout": 61, "inviteTimeout": 37, "joinability": "h773sgoNaJpESwcY", "maxPlayers": 94, "members": [{"ID": "JqigSUQaGUmEspNj", "PlatformID": "Cogy49SJDrPDeJ7a", "PlatformUserID": "Hw7iZ4frFkJY4kSE"}, {"ID": "3aDEO8ulcnYjWeEB", "PlatformID": "4YnLkT6SvExZu5fp", "PlatformUserID": "YTHITz9z6q5B1BEU"}, {"ID": "bALzuJ4tKkhOaaQj", "PlatformID": "18Onfx2wIjaywrf1", "PlatformUserID": "e0prDdvq7hIdefhS"}], "minPlayers": 27, "textChat": false, "type": "P6XdxEkzfrfsMdfP"}'
"""

result, error = public_create_party(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
