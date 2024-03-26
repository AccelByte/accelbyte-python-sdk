import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_add_inbox_category
from accelbyte_py_sdk.api.chat.models import ModelsAddInboxCategoryRequest
from accelbyte_py_sdk.api.chat.models import ModelsAddInboxCategoryResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsAddInboxCategoryRequest
enabled: bool
expires_in: int
hook: ModelsCategoryHook
Definition: ModelsCategoryHook
    driver: str
    params: Dict[str, Any]
json_schema: Dict[str, Any]
name: str
save_inbox: bool
send_notification: bool

Example: '{"enabled": false, "expiresIn": 29, "hook": {"driver": "KAFKA", "params": {"9kpgEFbSzHd82Yyg": {}, "Sctvwo0sFWQgyjIs": {}, "42NtNfzz8eT1MnzE": {}}}, "jsonSchema": {"z9SUaOMQoDcRGWXA": {}, "dSavvS7SBCCTJ9vP": {}, "Yi4bUgKmBIZ6sk0u": {}}, "name": "kJKjWmmKcsB1iUVC", "saveInbox": false, "sendNotification": true}'
"""

result, error = admin_add_inbox_category(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
