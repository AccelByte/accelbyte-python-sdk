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

Example: '{"attributes": {"zFjxuVa4DvM6YezD": {}, "9Bo15KSHg3NfJmMI": {}, "avrvzWQWDsAKggDS": {}}, "inactiveTimeout": 30, "inviteTimeout": 24, "joinability": "Vjy7AHE0gbGIeOO0", "maxPlayers": 68, "minPlayers": 75, "type": "ijarp74LMSyaU88c", "version": 53}'
"""

result, error = public_patch_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
