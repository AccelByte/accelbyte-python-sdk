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

Example: '{"chatRateLimitBurst": 90, "chatRateLimitDuration": 34, "concurrentUsersLimit": 96, "enableClanChat": true, "enableManualTopicCreation": false, "enableProfanityFilter": true, "filterAppName": "JpQ52OBfe0pVPSTA", "filterParam": "zXFiDweoz6kxD98U", "filterType": "R5XofaVjc1wZLBHN", "generalRateLimitBurst": 5, "generalRateLimitDuration": 27, "shardCapacityLimit": 45, "shardDefaultLimit": 49, "shardHardLimit": 63, "spamChatBurst": 97, "spamChatDuration": 24, "spamMuteDuration": 54}'
"""

result, error = admin_update_config_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
