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

Example: '{"attributes": {"Nr9Kgp2b884heJiJ": {}, "daDeplWaLJFdt3xq": {}, "4dlVwGCLIxlLo4bQ": {}}, "inactiveTimeout": 84, "inviteTimeout": 93, "joinability": "fq9uB4wnIC5ifQSM", "maxPlayers": 65, "minPlayers": 43, "type": "auHZNf1JcUIhRr5f", "version": 15}'
"""

result, error = public_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
