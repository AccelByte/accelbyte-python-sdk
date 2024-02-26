import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import send_users_freeform_notification_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequestV1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelFreeFormNotificationRequestV1
message: str
topic_name: str

Example: '{"message": "6vq1nPF6iBM8Gz3s", "topicName": "59Z7U8ohPHO7na87"}'
"""

result, error = send_users_freeform_notification_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
