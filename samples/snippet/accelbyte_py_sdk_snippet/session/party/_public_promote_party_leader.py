import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_promote_party_leader
from accelbyte_py_sdk.api.session.models import ApimodelsPartySessionResponse
from accelbyte_py_sdk.api.session.models import ApimodelsPromoteLeaderRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsPromoteLeaderRequest
leader_id: str

Example: '{"leaderID": "DgDQW8vobmm6m9BG"}'
"""

result, error = public_promote_party_leader(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
