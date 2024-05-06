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

Example: '{"expiredAt": 4, "message": {"6azaf9W4bHw3c1Fn": {}, "6i05S1JC5BkVLN8l": {}, "rzgp2RXTgmGPCFCL": {}}, "scope": "USER", "userIds": ["u7nDBKwjAdRTNISB", "bm9nIBdKMtMPCAGu", "47zjjR6W5Sk4Jdan"]}'
"""

result, error = admin_update_inbox_message(
    body=body,
    message_id=message_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
