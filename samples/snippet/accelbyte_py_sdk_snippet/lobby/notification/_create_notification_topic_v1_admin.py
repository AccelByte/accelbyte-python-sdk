import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import create_notification_topic_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelCreateTopicRequestV1
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelCreateTopicRequestV1
description: str
topic_name: str

Example: '{"description": "hyRwa2QeyuBbnFoS", "topicName": "XKMD70S0ePgEPjDF"}'
"""

result, error = create_notification_topic_v1_admin(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
