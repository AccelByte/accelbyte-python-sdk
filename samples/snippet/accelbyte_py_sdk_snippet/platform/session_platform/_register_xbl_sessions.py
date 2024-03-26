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

Example: '{"gameSessionId": "XOAaK7X1y4BTyazJ", "payload": {"xQ9KqO6IZxjz7mM0": {}, "tXp1vJh0ZZ4AexnW": {}, "S0JOFaL4N8WBnhgC": {}}, "scid": "GEDx8xpYSSLFj5i0", "sessionTemplateName": "tbsy9Gxg9nciV3hD"}'
"""

result, error = register_xbl_sessions(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
