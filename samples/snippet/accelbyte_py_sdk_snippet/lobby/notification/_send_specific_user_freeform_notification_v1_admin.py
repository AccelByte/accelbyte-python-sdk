import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import send_specific_user_freeform_notification_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequestV1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelFreeFormNotificationRequestV1
message: str
topic_name: str

Example: '{"message": "FW5Ctfq2vIyrV89I", "topicName": "rONdO4gdGTpBGCGh"}'
"""

result, error = send_specific_user_freeform_notification_v1_admin(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
