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

Example: '{"expiredAt": 42, "message": {"lKs2TkHn6IAI5Xf7": {}, "ZstmpzFZKZdlSdTz": {}, "zm8QoujClleoXTmo": {}}, "scope": "NAMESPACE", "userIds": ["GGMlVuVHNXfSgQkj", "uAlvrlbKCxhPEA7h", "9K8WHETkzg9AAkaF"]}'
"""

result, error = admin_update_inbox_message(
    body=body,
    message_id=message_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
