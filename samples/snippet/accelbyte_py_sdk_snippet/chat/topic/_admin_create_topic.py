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

Example: '{"admins": ["OvSX1OzYRjxwDXcY", "MHQIHPAlEsNFgmNG", "ASdAPbtSWGeTnhlO"], "description": "gF7rxlovQmNp4etI", "isChannel": false, "isJoinable": false, "members": ["5GF5H9hsUtKgeIVB", "9nCXToZZs1AVUTXH", "5odQrK5zbenvwiyZ"], "name": "TbxjkZEmUTl6WlLv", "shardLimit": 10, "type": "waWXUwoyjqKBFFw8"}'
"""

result, error = admin_create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
