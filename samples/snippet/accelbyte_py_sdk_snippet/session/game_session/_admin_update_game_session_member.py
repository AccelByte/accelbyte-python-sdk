import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import admin_update_game_session_member
from accelbyte_py_sdk.api.session.models import (
    ApimodelsUpdateGameSessionMemberStatusResponse,
)
from accelbyte_py_sdk.api.session.models import ResponseError

result, error = admin_update_game_session_member(
    member_id=member_id,
    session_id=session_id,
    status_type=status_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
