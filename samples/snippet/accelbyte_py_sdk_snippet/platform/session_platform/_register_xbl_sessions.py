import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import register_xbl_sessions
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity
from accelbyte_py_sdk.api.platform.models import XblUserSessionRequest

"""
body:
Definition: XblUserSessionRequest
game_session_id: str
payload: Dict[str, Any]
scid: str
session_template_name: str

Example: '{"gameSessionId": "PEXSnyLBuuExf2ad", "payload": {"KK7ZxhrlR7060Ock": {}, "NTPiWTMw3v3P260P": {}, "8AM0TkYPUHtsghD1": {}}, "scid": "etyiX1z843mVBmdR", "sessionTemplateName": "pl6BbPj2LnYtAI2a"}'
"""

result, error = register_xbl_sessions(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
