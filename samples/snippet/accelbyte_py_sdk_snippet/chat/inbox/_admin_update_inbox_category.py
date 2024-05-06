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

Example: '{"enabled": false, "expiresIn": 12, "hook": {"driver": "3PioCE6e17XVFOtU", "params": {"E5ueeM4Ibwg64pu0": {}, "NAWOurEi4GF60GIK": {}, "B9zPs5WbUkev45HG": {}}}, "jsonSchema": {"wgrkksqZ7xdqFBqR": {}, "0Mbt7MgVpYTXYb41": {}, "hpYs6XV7jltoW01v": {}}, "saveInbox": false, "sendNotification": true}'
"""

result, error = admin_update_inbox_category(
    body=body,
    category=category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
