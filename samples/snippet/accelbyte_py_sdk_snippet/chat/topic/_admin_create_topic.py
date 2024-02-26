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

Example: '{"admins": ["udFlctF6fd45OA3u", "GbLO901SC8kbxU7n", "wqClakm2XulNAbw0"], "description": "ffvLr2C7eJ3L3DJ2", "isChannel": false, "isJoinable": false, "members": ["9FNtMtQxV87N1uC2", "dG9VZi8PkI0ioJAk", "Qx1WvnW3OVyobUeN"], "name": "QUkq3SWhvn5tgD1g", "shardLimit": 58, "type": "VvsVyvAsEtI1aTVp"}'
"""

result, error = admin_create_topic(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
