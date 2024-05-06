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

Example: '{"enabled": true, "expiresIn": 17, "hook": {"driver": "LXCLqupSbO7UTfFD", "params": {"vl1X36uTRU2yezDj": {}, "My8GFQTtwHew7d6u": {}, "0iupC0OcgzgWMl9p": {}}}, "jsonSchema": {"TEaCNFMWF8k1eHHo": {}, "tOZT7QdJmjXNYvDh": {}, "VFIQFz3CPBrICGaT": {}}, "name": "dlfgmm94ewYJr6rW", "saveInbox": true, "sendNotification": true}'
"""

result, error = admin_add_inbox_category(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
