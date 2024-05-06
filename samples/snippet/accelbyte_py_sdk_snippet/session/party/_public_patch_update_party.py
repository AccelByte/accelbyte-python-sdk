import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_patch_update_party
from accelbyte_py_sdk.api.session.models import ApimodelsPartySessionResponse
from accelbyte_py_sdk.api.session.models import ApimodelsUpdatePartyRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsUpdatePartyRequest
attributes: Dict[str, Any]
inactive_timeout: int
invite_timeout: int
joinability: str
max_players: int
min_players: int
type_: str
version: int

Example: '{"attributes": {"uwIspUFRukWIhfW4": {}, "txIY7YmxVGtbdadP": {}, "cXypwCkf7Du7hT0H": {}}, "inactiveTimeout": 83, "inviteTimeout": 18, "joinability": "kkz79nLag9CLfoQ0", "maxPlayers": 92, "minPlayers": 72, "type": "4xH9npUmrN9IZSd6", "version": 46}'
"""

result, error = public_patch_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
