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

Example: '{"category": "upk9KL5nG2PLsMIB", "expiredAt": 71, "message": {"50SUF0KKNU8e3p1o": {}, "DnoQ5DmEcyoheJeS": {}, "NXFyHw5ZoxCmDuVa": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["GClAcCX56oiiT2zr", "wzapyPz2uACz2jmm", "n0Jx6SDody2gPSuU"]}'
"""

result, error = admin_save_inbox_message(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
