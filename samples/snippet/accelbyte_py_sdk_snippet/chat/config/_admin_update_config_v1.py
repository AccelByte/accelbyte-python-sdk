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
max_chat_message_length: int
shard_capacity_limit: int
shard_default_limit: int
shard_hard_limit: int
spam_chat_burst: int
spam_chat_duration: int
spam_mute_duration: int

Example: '{"chatRateLimitBurst": 24, "chatRateLimitDuration": 35, "concurrentUsersLimit": 24, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": false, "filterAppName": "OgyxSbEXw9UuUzbG", "filterParam": "wszSu7DwFEUBLX5P", "filterType": "wv71Bw1xHNIOwN8m", "generalRateLimitBurst": 93, "generalRateLimitDuration": 91, "maxChatMessageLength": 37, "shardCapacityLimit": 18, "shardDefaultLimit": 72, "shardHardLimit": 0, "spamChatBurst": 69, "spamChatDuration": 96, "spamMuteDuration": 41}'
"""

result, error = admin_update_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
