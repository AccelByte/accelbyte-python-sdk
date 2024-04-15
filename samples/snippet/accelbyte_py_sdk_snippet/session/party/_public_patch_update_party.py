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

Example: '{"attributes": {"4QXl2D0X2W4QAXrb": {}, "4yQKC2tFSvdVwhUh": {}, "f8Q8huU9EHEWpHAT": {}}, "inactiveTimeout": 92, "inviteTimeout": 52, "joinability": "Ye5emMHH2FFjarQY", "maxPlayers": 62, "minPlayers": 99, "type": "zrT7y8OaEllbEOFV", "version": 8}'
"""

result, error = public_patch_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
