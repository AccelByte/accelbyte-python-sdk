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

Example: '{"admins": ["78YUeOYMGhrr01nJ", "0joxZdFJZymewphF", "AbidHoH7yvEZ8eUf"], "description": "to0FSsl9EVShj0to", "isChannel": true, "isJoinable": true, "members": ["C5jFjP434DPCdAdd", "z2AZnDzEWCbUpBwZ", "r7kyZObaEj3JE9Dh"], "name": "8YwAuRtLBHXEEn2I", "shardLimit": 44, "type": "4TL3KGVccYDhXkQg"}'
"""

result, error = admin_create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
