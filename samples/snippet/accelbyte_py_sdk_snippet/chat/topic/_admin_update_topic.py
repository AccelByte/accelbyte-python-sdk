import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_update_topic
from accelbyte_py_sdk.api.chat.models import ApiCreateTopicResponse
from accelbyte_py_sdk.api.chat.models import ApiUpdateTopicParams

"""
body:
Definition: ApiUpdateTopicParams
description: str
is_joinable: bool
name: str

Example: '{"description": "f7vqYGAH8tdwCMJg", "isJoinable": false, "name": "aen3v7NEX6Wn6uq2"}'
"""

result, error = admin_update_topic(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
