import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_party_invite
from accelbyte_py_sdk.api.session.models import ApimodelsSessionInviteRequest
from accelbyte_py_sdk.api.session.models import ApimodelsSessionInviteResponse
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsSessionInviteRequest
platform_id: str
user_id: str

Example: '{"platformID": "VG4Ld89ptgGXmZXf", "userID": "lp4TLkwGo6DERP0m"}'
"""

result, error = public_party_invite(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
