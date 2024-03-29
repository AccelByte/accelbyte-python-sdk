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

Example: '{"description": "26rQEiBkz2grYul5", "topic": "rfeV8U62JY3DlJhv"}'
"""

result, error = create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
