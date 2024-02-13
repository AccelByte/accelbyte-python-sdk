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

Example: '{"admins": ["2tFnlUgbKFMNnRiu", "eGsfrborTqC6oGIe", "g0g0eIqASdf6vlNQ"], "description": "fSqe16FuyTFFqL5m", "isChannel": false, "isJoinable": true, "members": ["N0j2rWBMst1zQfjQ", "wt3LJFWx9A7K34fs", "rBG2jROJ36IIsY1j"], "name": "UewwkzwcYGjoikgy", "shardLimit": 87, "type": "mxh4KiBe8Hm02wb4"}'
"""

result, error = admin_create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
