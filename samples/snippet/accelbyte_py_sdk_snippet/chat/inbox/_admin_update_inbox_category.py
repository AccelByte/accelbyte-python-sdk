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

Example: '{"enabled": false, "expiresIn": 41, "hook": {"driver": "KAFKA", "params": "yKRq3aNfCeOo2Kfk"}, "jsonSchema": {"rUendzPZzg2Rg7G5": {}, "VolRZWCK66omvooM": {}, "jckJkJPAzdSozxea": {}}, "saveInbox": false, "sendNotification": true}'
"""

result, error = admin_update_inbox_category(
    body=body,
    category=category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
