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

Example: '{"admins": ["lNL8ayo7abRxxM7X", "xu9FBPq0qmZZ7FZw", "myIs9baExizsN2MH"], "description": "oV9SBOfQXsjn1C2J", "isChannel": false, "isJoinable": true, "members": ["SSl0MgVwMqEPRgPr", "ZmKNldvBdqv0XeYX", "1obwiVWXKb0UVmBX"], "name": "eaYr8i7dtgkCMIMY", "shardLimit": 71, "type": "Ra2JlnNTtGmktTQ2"}'
"""

result, error = admin_create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
