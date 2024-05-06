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

Example: '{"gameSessionId": "y78f5Qnw190mQUfD", "payload": {"82HE6oNxPWAhIdlq": {}, "X62dLKSS27IRmEWE": {}, "WyPjXZzfDMGZCOea": {}}, "scid": "GQ0yMz4r8VrrR3PC", "sessionTemplateName": "KgceV3wnQd9zkJ4k"}'
"""

result, error = register_xbl_sessions(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
