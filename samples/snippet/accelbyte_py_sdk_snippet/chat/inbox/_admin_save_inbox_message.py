import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_save_inbox_message
from accelbyte_py_sdk.api.chat.models import ModelsSaveInboxMessageRequest
from accelbyte_py_sdk.api.chat.models import ModelsSaveInboxMessageResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsSaveInboxMessageRequest
category: str
expired_at: int
message: Dict[str, Any]
scope: str
status: str
user_ids: List[str]

Example: '{"category": "yTkANsCIQAmpZOjD", "expiredAt": 3, "message": {"pV9gr3jbuDZhVEss": {}, "3gC3TwHart6atP9d": {}, "xS7ukAGYcyw3ivaD": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["ol4qCxoqvYbUbHW9", "mQFOdiTw5I5LSzi6", "xNg6T9PX8ldt41eu"]}'
"""

result, error = admin_save_inbox_message(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
