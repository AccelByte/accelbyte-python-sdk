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

Example: '{"userIds": ["Wzxs7bg3wqtcaJpS", "f5hKD3OO4MHAcF1o", "xDfCfqSqt29fiacP"]}'
"""

result, error = admin_ban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
