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

Example: '{"attributes": {"XwLnrpK8aVrtooSS": {}, "wiGP379mBYSPQgyP": {}, "t84VeS5vG1NEkA96": {}}, "configurationName": "gynwZDz5RK5eggm0", "inactiveTimeout": 84, "inviteTimeout": 64, "joinability": "3o3dfsHOlqHmDIwL", "maxPlayers": 40, "members": [{"ID": "hFK8HKUBODrv8JAm", "PlatformID": "egnXzFWrNifYOlSx", "PlatformUserID": "50ft9BEHCZoHOjU2"}, {"ID": "oD053u3DHqf7M4QJ", "PlatformID": "BuOPIcsCrqlaDAFA", "PlatformUserID": "aSwdoSTwC2Pr13A5"}, {"ID": "ZTx9AAfFAHXQ9nl1", "PlatformID": "O90zpavCZUC9fici", "PlatformUserID": "MRXt0SWbCw9zyFPk"}], "minPlayers": 3, "textChat": true, "type": "BL6v72xei6c3Qhwh"}'
"""

result, error = public_create_party(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
