import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import send_party_freeform_notification_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequestV1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelFreeFormNotificationRequestV1
message: str
topic_name: str

Example: '{"message": "ALty0pq9KpbwKXrL", "topicName": "xjyr8nHUeTEge0kF"}'
"""

result, error = send_party_freeform_notification_v1_admin(
    body=body,
    party_id=party_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
