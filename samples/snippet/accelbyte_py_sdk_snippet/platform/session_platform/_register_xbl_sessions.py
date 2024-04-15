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

Example: '{"gameSessionId": "ZTWWvu6QU36fw6IC", "payload": {"zaWIXSRrwQoIy3Je": {}, "5Cdp7bdRSXvYeMgz": {}, "1aQgACOBlPWYA5dv": {}}, "scid": "n9qC9iTfDq5x0Vud", "sessionTemplateName": "vemyPSoiHUNJ11Gz"}'
"""

result, error = register_xbl_sessions(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
