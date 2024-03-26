import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import update_notification_topic_v1_admin
from accelbyte_py_sdk.api.lobby.models import ModelUpdateTopicRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelUpdateTopicRequest
description: str

Example: '{"description": "kgWGub5EQt5OuCpZ"}'
"""

result, error = update_notification_topic_v1_admin(
    body=body,
    topic_name=topic_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
