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

Example: '{"attributes": {"9Da6ZMxidgyF10KE": {}, "SMlkGWoBfgx5YwSw": {}, "pdVk8sBjUWyGIFX7": {}}, "inactiveTimeout": 32, "inviteTimeout": 85, "joinability": "XPqu0hm6dMHn18Uj", "maxPlayers": 62, "minPlayers": 84, "type": "PH9PHkSUl4Gqa1Bu", "version": 31}'
"""

result, error = public_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
