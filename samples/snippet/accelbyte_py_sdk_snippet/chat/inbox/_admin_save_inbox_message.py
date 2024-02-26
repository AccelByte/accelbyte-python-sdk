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

Example: '{"category": "s1ah0ZSoJ9Ox4Dcz", "expiredAt": 35, "message": {"pbmWDorieFtxtHd3": {}, "Krvn0Nr3KHKdY21b": {}, "VyjhEkfyZyIKq46X": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["2txPPzJTr4RujMsA", "Y00ozqwK6zivwiNE", "12Oq3NNMmRGlb7Ft"]}'
"""

result, error = admin_save_inbox_message(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
