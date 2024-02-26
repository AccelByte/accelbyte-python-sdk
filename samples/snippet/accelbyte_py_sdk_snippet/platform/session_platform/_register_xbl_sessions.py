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

Example: '{"gameSessionId": "AQ5b9qv8ki6Gz28M", "payload": {"ux2YpYu3OYD1AVls": {}, "fp7C0BUODRIFxlp3": {}, "TDZlCpWB1HuqcUQc": {}}, "scid": "k6zMn64kl7P6CJLz", "sessionTemplateName": "0lW8yYYjAqVMBE9e"}'
"""

result, error = register_xbl_sessions(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
