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

Example: '{"attributes": {"oS1wKgrouIQLCudY": {}, "0rzYrPjBNxRxqJ6l": {}, "MGh8ufllKZmbnewo": {}}, "inactiveTimeout": 97, "inviteTimeout": 75, "joinability": "ql1ZhDEPCU5oOqgk", "maxPlayers": 74, "minPlayers": 44, "type": "gsnqlwwBVkFFw3EJ", "version": 56}'
"""

result, error = public_patch_update_party(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
