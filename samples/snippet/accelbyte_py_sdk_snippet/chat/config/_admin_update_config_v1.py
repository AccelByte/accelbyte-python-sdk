import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_update_config_v1
from accelbyte_py_sdk.api.chat.models import ModelsConfigResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsConfigResponse
chat_rate_limit_burst: int
chat_rate_limit_duration: int
concurrent_users_limit: int
enable_clan_chat: bool
enable_manual_topic_creation: bool
enable_profanity_filter: bool
filter_app_name: str
filter_param: str
filter_type: str
general_rate_limit_burst: int
general_rate_limit_duration: int
shard_capacity_limit: int
shard_default_limit: int
shard_hard_limit: int
spam_chat_burst: int
spam_chat_duration: int
spam_mute_duration: int

Example: '{"chatRateLimitBurst": 60, "chatRateLimitDuration": 47, "concurrentUsersLimit": 37, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "4UkAp6HzdiUmtBXp", "filterParam": "2BXJXuWD7u4GRaPs", "filterType": "Ul4TLJ0w9LEx6S6o", "generalRateLimitBurst": 74, "generalRateLimitDuration": 75, "shardCapacityLimit": 56, "shardDefaultLimit": 45, "shardHardLimit": 90, "spamChatBurst": 54, "spamChatDuration": 72, "spamMuteDuration": 19}'
"""

result, error = admin_update_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
