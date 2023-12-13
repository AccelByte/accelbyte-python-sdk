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

Example: '{"chatRateLimitBurst": 47, "chatRateLimitDuration": 91, "concurrentUsersLimit": 11, "enableClanChat": false, "enableManualTopicCreation": true, "enableProfanityFilter": true, "filterAppName": "c8LxiZznhDqSXGRP", "filterParam": "9kyP5w88rTAsLMc5", "filterType": "OTd87KSBpQ0sVe2e", "generalRateLimitBurst": 31, "generalRateLimitDuration": 53, "shardCapacityLimit": 92, "shardDefaultLimit": 64, "shardHardLimit": 6, "spamChatBurst": 69, "spamChatDuration": 95, "spamMuteDuration": 76}'
"""

result, error = admin_update_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
