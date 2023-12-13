import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_send_inbox_message
from accelbyte_py_sdk.api.chat.models import ModelsSendInboxMessageRequest
from accelbyte_py_sdk.api.chat.models import ModelsSendInboxMessageResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsSendInboxMessageRequest

Example: '{}'
"""

result, error = admin_send_inbox_message(
    body=body,
    message_id=message_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
