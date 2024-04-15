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

Example: '{"userIds": ["NvZxzKQyhfqhEr2G", "bVAk9pBvGl9nEirw", "r8n1odmUrEY1uf0v"]}'
"""

result, error = admin_ban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
