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
    params: Dict[str, Any]
json_schema: Dict[str, Any]
save_inbox: bool
send_notification: bool

Example: '{"enabled": false, "expiresIn": 48, "hook": {"driver": "UzHLEyal9hmAU01j", "params": {"BUjU3IpfzYQh9bye": {}, "uXvCgwtpX6HtJBYy": {}, "I4K0AcUdkmQ2vd0X": {}}}, "jsonSchema": {"NFNfLs5n4H3kUmRX": {}, "AqvaK78wvNOOiyTG": {}, "SgdXJPR3LPn940Lu": {}}, "saveInbox": true, "sendNotification": true}'
"""

result, error = admin_update_inbox_category(
    body=body,
    category=category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
