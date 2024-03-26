import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_update_party
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

Example: '{"attributes": {"SUFKoiK2JKzl6jWw": {}, "IhIzj6O5z1Qwy8PW": {}, "tdLhmXZM2XwdpeYK": {}}, "inactiveTimeout": 74, "inviteTimeout": 7, "joinability": "cdFwV74mcGiAK3Mw", "maxPlayers": 30, "minPlayers": 50, "type": "GF2Cl9aaFyzKLxWo", "version": 77}'
"""

result, error = public_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
