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

Example: '{"category": "AkUyRMJL9Cs7RgQ0", "expiredAt": 71, "message": {"4eCoC5o2siIx297j": {}, "RnHtGYelSfBudZBz": {}, "WaiLRkvOjmoKnvRn": {}}, "scope": "USER", "status": "SENT", "userIds": ["hVcsj3H6PpERVgGt", "nm0qGGjxLlhRP4o7", "BqyQYr9nNAvPJfhE"]}'
"""

result, error = admin_save_inbox_message(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
