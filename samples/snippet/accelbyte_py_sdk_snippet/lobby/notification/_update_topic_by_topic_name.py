import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import update_topic_by_topic_name
from accelbyte_py_sdk.api.lobby.models import ModelUpdateTopicRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelUpdateTopicRequest
description: str

Example: '{"description": "PCM3SKrzR1cZCcVK"}'
"""

result, error = update_topic_by_topic_name(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
