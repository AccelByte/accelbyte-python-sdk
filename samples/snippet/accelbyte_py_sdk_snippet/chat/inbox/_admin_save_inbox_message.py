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

Example: '{"category": "zS8rc3Z5Urko5htA", "expiredAt": 5, "message": {"V63X0sEN8gGYKNqv": {}, "010PffysvrCNJnMf": {}, "vuJd8bybzi1E76v7": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["Q3jvs5fBponxstPS", "ISmoxXg8Ax5ymRny", "2vukVO8veJm7112x"]}'
"""

result, error = admin_save_inbox_message(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
