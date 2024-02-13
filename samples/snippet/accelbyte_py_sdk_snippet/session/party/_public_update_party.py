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

Example: '{"attributes": {"3lrO7C17ufQ4o3V9": {}, "68lcrysOShRzdb9j": {}, "9xZhGZn1Z2AsvB2q": {}}, "inactiveTimeout": 6, "inviteTimeout": 37, "joinability": "mKUGflKGB5JTTe9S", "maxPlayers": 94, "minPlayers": 45, "type": "IXJtCqF97BTaWQD2", "version": 92}'
"""

result, error = public_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
