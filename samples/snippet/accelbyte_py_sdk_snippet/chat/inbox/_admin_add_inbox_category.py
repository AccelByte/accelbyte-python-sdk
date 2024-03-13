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

Example: '{"enabled": false, "expiresIn": 60, "hook": {"driver": "KAFKA", "params": "BDir4DJMaA8WIGfn"}, "jsonSchema": {"5ccQLlur4EXS3p35": {}, "QSFWSVEg8w6hyFdD": {}, "UhDq1yY1nmoUKvs6": {}}, "name": "wrwcxRKKaySBeeat", "saveInbox": false, "sendNotification": true}'
"""

result, error = admin_add_inbox_category(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
