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

Example: '{"userIds": ["dofSS4ljp3tsUykp", "0Yb3efSAsQnOIItX", "el5m0sXKNFLfXpKE"]}'
"""

result, error = admin_unban_topic_members(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
