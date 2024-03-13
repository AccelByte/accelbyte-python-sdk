import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_unban_topic_members
from accelbyte_py_sdk.api.chat.models import ModelsUnbanTopicMemberParam
from accelbyte_py_sdk.api.chat.models import ModelsUnbanTopicMemberResult
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsUnbanTopicMemberParam
user_ids: List[str]

Example: '{"userIds": ["28z6CNaC535mkiGB", "enImqAxnadt5zpRM", "mHLxvUGzxPhgJO0O"]}'
"""

result, error = admin_unban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
