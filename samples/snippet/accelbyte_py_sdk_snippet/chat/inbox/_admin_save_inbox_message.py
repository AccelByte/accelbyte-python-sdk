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

Example: '{"category": "7B6JJLU22s661iBr", "expiredAt": 97, "message": {"DAfuSE6dzoFk83Du": {}, "O3Mw7v5Xjt3KHu4Q": {}, "pTx86ppZtvimUFsw": {}}, "scope": "NAMESPACE", "status": "SENT", "userIds": ["n0jk02HIopNT2Kkg", "zl4uJEEdJIXZajsX", "TXHTuDUDOD0O9Aaf"]}'
"""

result, error = admin_save_inbox_message(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
