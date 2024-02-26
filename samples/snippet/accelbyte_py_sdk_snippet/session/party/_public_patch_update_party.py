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

Example: '{"attributes": {"6xNCagcL1hUtEiVl": {}, "mVxKEgbfjucmKK4A": {}, "ywhWH6wHLzH5matD": {}}, "inactiveTimeout": 61, "inviteTimeout": 5, "joinability": "GflQ90GUkSOFAvxe", "maxPlayers": 32, "minPlayers": 38, "type": "zEOHotNS9rvbzQwd", "version": 84}'
"""

result, error = public_patch_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
