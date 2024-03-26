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

Example: '{"category": "b7eZohukD0gpfKMD", "expiredAt": 38, "message": {"c9ZG8uH4Ht6tL5cz": {}, "meLwtz6MaVU9ESQC": {}, "KOVHzSiwiPt2Oad3": {}}, "scope": "USER", "status": "DRAFT", "userIds": ["4BEoffoYJIvC5NZp", "qLPbn2dO8deTgPW4", "yhaS1n2MecGMX4uY"]}'
"""

result, error = admin_save_inbox_message(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
