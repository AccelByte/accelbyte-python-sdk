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

Example: '{"attributes": {"PU6CjS37G7Y9TZWi": {}, "omj9c4V6HbLUJMQ6": {}, "ofTHuwq4aHSdrFHn": {}}, "inactiveTimeout": 30, "inviteTimeout": 34, "joinability": "lWPxQXQpXGw8v6iz", "maxPlayers": 93, "minPlayers": 92, "type": "4WRApnywEwSazN5g", "version": 64}'
"""

result, error = public_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
