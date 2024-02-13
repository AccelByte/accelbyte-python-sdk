import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_update_inbox_category
from accelbyte_py_sdk.api.chat.models import ModelsUpdateInboxCategoryRequest
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsUpdateInboxCategoryRequest
enabled: bool
expires_in: int
hook: ModelsCategoryHook
Definition: ModelsCategoryHook
    driver: str
    params: str
json_schema: Dict[str, Any]
save_inbox: bool
send_notification: bool

Example: '{"enabled": true, "expiresIn": 83, "hook": {"driver": "KAFKA", "params": "QI1tCSHz1Gk8eLBW"}, "jsonSchema": {"lOlAl5xS3HpB5e9w": {}, "B8m6jsWVhSgigiel": {}, "hgBCL4jx8watP5Mm": {}}, "saveInbox": false, "sendNotification": false}'
"""

result, error = admin_update_inbox_category(
    body=body,
    category=category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
