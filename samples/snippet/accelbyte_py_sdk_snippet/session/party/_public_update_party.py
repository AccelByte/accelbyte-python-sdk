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

Example: '{"attributes": {"B5GTJGfCIIi08I3W": {}, "qFyOEYK4JCKBNLao": {}, "P1KuByAfQDytlJCt": {}}, "inactiveTimeout": 25, "inviteTimeout": 20, "joinability": "BTceLMCprS4wsre9", "maxPlayers": 30, "minPlayers": 26, "type": "5a5Q8kzcHLAEJAAw", "version": 21}'
"""

result, error = public_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
