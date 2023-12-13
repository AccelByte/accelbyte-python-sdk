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

Example: '{"admins": ["YyWKBrlUOFONVAi5", "S3yRW9QpgD9Up2qN", "ujgMUBHJq6jdCIV9"], "description": "ZRHGGt27IOFuR5WR", "isChannel": true, "isJoinable": true, "members": ["8a4TO7NzJ01IEs9x", "HBLHV00XWJIqmQmL", "gJpMBKaUASm7PJtS"], "name": "fHs50su39Bx4vtL8", "shardLimit": 63, "type": "eeaojfYUTWCBt2fz"}'
"""

result, error = admin_create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
