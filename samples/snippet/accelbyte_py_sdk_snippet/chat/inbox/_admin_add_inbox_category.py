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

Example: '{"enabled": true, "expiresIn": 25, "hook": {"driver": "KAFKA", "params": "4KUMftRzUiM6hFke"}, "jsonSchema": {"FAQl7dkU5rE6ydvg": {}, "KsNCz6YMLRqITo6F": {}, "QCEED0BoXBjjVTKG": {}}, "name": "8KNdh95nMrpTypCP", "saveInbox": true, "sendNotification": false}'
"""

result, error = admin_add_inbox_category(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
