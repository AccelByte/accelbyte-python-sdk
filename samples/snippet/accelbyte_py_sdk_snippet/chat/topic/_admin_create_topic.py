import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_create_topic
from accelbyte_py_sdk.api.chat.models import ApiCreateTopicParams
from accelbyte_py_sdk.api.chat.models import ApiCreateTopicResponse

"""
body:
Definition: ApiCreateTopicParams
admins: List[str]
description: str
is_channel: bool
is_joinable: bool
members: List[str]
name: str
shard_limit: int
type_: str

Example: '{"admins": ["zVY5IuHY4K8j4SeR", "HDjF5rrHnbEysCtV", "vOAJZy7ylGyjBltF"], "description": "sfPHJd2zBDWi0Lh8", "isChannel": true, "isJoinable": true, "members": ["bp4BsttAAlAYCjtA", "YMVzSrx0z33YCsd4", "tH8aIw0PsQQlihCE"], "name": "Xp2BqjfvAjIfhr3z", "shardLimit": 83, "type": "5VBW5IywGMjQsNht"}'
"""

result, error = admin_create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
