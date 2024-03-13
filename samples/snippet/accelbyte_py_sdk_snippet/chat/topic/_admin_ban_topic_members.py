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

Example: '{"userIds": ["Ej7Dl0GIqsaQs5Xm", "ESHV1mlbOOIED18M", "kMDNw0g6f636x9xe"]}'
"""

result, error = admin_ban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
