import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_send_chat
from accelbyte_py_sdk.api.chat.models import ApiSendChatParams
from accelbyte_py_sdk.api.chat.models import ModelsChatMessageResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ApiSendChatParams
message: str

Example: '{"message": "rqKsQnY1aVPPupSP"}'
"""

result, error = admin_send_chat(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
