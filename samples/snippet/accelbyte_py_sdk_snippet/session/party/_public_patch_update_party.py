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

Example: '{"attributes": {"tBtbheZRmuaeepXK": {}, "yXnG8brSCrqJJAu0": {}, "dXnayAqZBUtARfp7": {}}, "inactiveTimeout": 53, "inviteTimeout": 54, "joinability": "6l1I2SDLB9Fwrrt4", "maxPlayers": 2, "minPlayers": 42, "type": "NULHXT7fisVBgiSk", "version": 86}'
"""

result, error = public_patch_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
