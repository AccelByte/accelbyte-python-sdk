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
    params: str
json_schema: Dict[str, Any]
name: str
save_inbox: bool
send_notification: bool

Example: '{"enabled": false, "expiresIn": 59, "hook": {"driver": "KAFKA", "params": "DR84TRyqLpzkzfVa"}, "jsonSchema": {"6zPM4YCVHVvGJJkD": {}, "oikgxLkdm5dvdk1q": {}, "Ob2rYcDzmefGxTDX": {}}, "name": "mY778B83CLkghJ5m", "saveInbox": true, "sendNotification": true}'
"""

result, error = admin_add_inbox_category(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
