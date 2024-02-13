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

Example: '{"expiredAt": 65, "message": {"yfblDe9sMvupr5px": {}, "DWWo8Mi099gwnFz0": {}, "tDVx7Duxt4riMijh": {}}, "scope": "USER", "userIds": ["r6WAgTOxpunNHnEF", "xsXjvqSI29Ck35qR", "6Cr84NOrn20G4jUu"]}'
"""

result, error = admin_update_inbox_message(
    body=body,
    message_id=message_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
