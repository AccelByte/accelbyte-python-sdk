import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import free_form_notification
from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelFreeFormNotificationRequest
message: str
topic: str

Example: '{"message": "tslvMyYUPTS1XKSi", "topic": "xmgZ4nz5cGssR5AB"}'
"""

result, error = free_form_notification(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
