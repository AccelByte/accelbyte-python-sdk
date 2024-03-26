import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import free_form_notification_by_user_id
from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelFreeFormNotificationRequest
message: str
topic: str

Example: '{"message": "Z11Yl8dy40lzbF31", "topic": "6UKcU3X8f8WX3n1f"}'
"""

result, error = free_form_notification_by_user_id(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
