import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_promote_game_session_leader
from accelbyte_py_sdk.api.session.models import ApimodelsGameSessionResponse
from accelbyte_py_sdk.api.session.models import ApimodelsPromoteLeaderRequest
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsPromoteLeaderRequest
leader_id: str

Example: '{"leaderID": "73XxVFbOCGu442cZ"}'
"""

result, error = public_promote_game_session_leader(
    body=body,
    session_id=session_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
