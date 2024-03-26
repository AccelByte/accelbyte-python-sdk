import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_ban_topic_members
from accelbyte_py_sdk.api.chat.models import ModelsBanTopicMemberParam
from accelbyte_py_sdk.api.chat.models import ModelsBanTopicMemberResult
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsBanTopicMemberParam
user_ids: List[str]

Example: '{"userIds": ["XV9weZsgYy8vB46o", "1ID0EMtj7kfu5lSa", "E8YI5AbttOZE3C7E"]}'
"""

result, error = admin_ban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
