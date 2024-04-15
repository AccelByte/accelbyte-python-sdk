import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_update_inbox_message
from accelbyte_py_sdk.api.chat.models import ModelsUpdateInboxMessageRequest
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsUpdateInboxMessageRequest
expired_at: int
message: Dict[str, Any]
scope: str
user_ids: List[str]

Example: '{"expiredAt": 47, "message": {"4Qyenie4NEj1pWsx": {}, "DVgyJs16K40Obcvj": {}, "slPpHrMH8OXz4jXN": {}}, "scope": "USER", "userIds": ["L4m7CTk8O6iH23s3", "6tT6LzB5VV6ZTfti", "z21cMKsGVMnXPNaP"]}'
"""

result, error = admin_update_inbox_message(
    body=body,
    message_id=message_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
