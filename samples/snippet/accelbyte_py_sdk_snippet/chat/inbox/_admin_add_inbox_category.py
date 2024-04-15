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

Example: '{"enabled": true, "expiresIn": 10, "hook": {"driver": "ppjFMaSE613q9OSl", "params": {"RlGmqTxfQcpxmzIl": {}, "RRggSHlfLNxYFlaa": {}, "29wma6XIOOIfDj0N": {}}}, "jsonSchema": {"373moOMkNTfkclmY": {}, "Uo3M7XjUln50Uama": {}, "IIDTzknyklZhFaCn": {}}, "name": "eKaTm5hxV2z3USqn", "saveInbox": true, "sendNotification": false}'
"""

result, error = admin_add_inbox_category(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
