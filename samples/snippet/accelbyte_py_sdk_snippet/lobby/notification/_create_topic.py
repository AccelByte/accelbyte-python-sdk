import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import create_topic
from accelbyte_py_sdk.api.lobby.models import ModelCreateTopicRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelCreateTopicRequest
description: str
topic: str

Example: '{"description": "RdE559ufnK0tC96F", "topic": "ujgm9vOKZKcNjVxU"}'
"""

result, error = create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
